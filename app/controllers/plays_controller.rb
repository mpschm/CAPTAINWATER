class PlaysController < ApplicationController
  def show
    @play = Play.find(params[:id])
    authorize @play
    @game = @play.game

    @questions = @game.questions.where(step: @game.current_step, played: false)
    @question = @questions.first

    @question = nil if @game.current_step == 11 # To be removed next week if other question kind implemented
    return redirect_to game_plays_path(@play.game) if @question.nil?

    @answers = @question.answers
    @user_answer = UserAnswer.new
    @next_step = @questions.count > 1 ? @game.current_step : @game.current_step + 1
  end

  def new
   @play = Play.new
   authorize current_user
  end

  def create
    game = Game.find_by(name: params[:game][:name])
    @play = Play.where(user_id: current_user.id, game_id: game.id).first_or_create
    authorize @play
    ActionCable.server.broadcast("game_#{game.id}", {
      new_player: @play.user.email
    })
    redirect_to play_path(@play)
  end

  def index
    @game = Game.find(params[:game_id])
    @plays = policy_scope(Play).where(game: @game)
    @result = current_user.plays.find_by(game: @game).score
  end

  def game_boat
    authorize current_user
  end

  def finished?
    @play = Play.find(params[:id])
    # if @play.user_answers.size == 10
    #   return true
    # end
    authorize @play
    ActionCable.server.broadcast("game_#{game.id}", {
      new_finisher: @play.user.email,
      new_score: @play.score
    })
  end
end

