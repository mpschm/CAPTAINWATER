class PlaysController < ApplicationController
  def show
    @play = Play.find(params[:id])
    authorize @play
    @game = @play.game

    questions = @game.questions.where(step: @game.current_step, played: false)
    @question = questions.first
    return redirect_to game_plays_path(@play.game) if @question.nil?

    @answers = @question.answers
    @user_answer = UserAnswer.new
    @next_step = questions.count > 1 ? @game.current_step : @game.current_step + 1
  end

  def new
   @play = Play.new
   authorize current_user
  end


  def create
    #@play = TODO
    game = Game.find_by(name: params[:game][:name])
    @play = Play.where(user_id: current_user.id, game_id: game.id).first_or_create


    authorize @play
    redirect_to play_path(@play)
  end

  def index
    @game = Game.find(params[:id])
    @plays = policy_scope(Play).where(game: @game)
  end
end
  # def countdown(seconds)
  #   date1 = Time.now + seconds
  #   while Time.now < date1
  #     t = Time.at(date1.to_i - Time.now.to_i)
  #     puts t.strftime('%M:%S')
  #     sleep 1
  #   end
  # end

