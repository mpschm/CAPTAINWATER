class PlaysController < ApplicationController
  def show
    @play = Play.find(params[:id])
    authorize @play
    @game = @play.game

    @questions = @game.questions.where(step: @game.current_step, played: false)
    @question = @questions.first

    @question = nil if @game.current_step == 11 # To be removed next week if other question kind implemented
    return redirect_to game_boat_play_path(@play) if @question.nil?

    @answers = @question.answers
    @user_answer = UserAnswer.new
    @next_step = @questions.count > 1 ? @game.current_step : @game.current_step + 1
  end

  def new
   @play = Play.new
   raise
   authorize @play
  end

  def create
    if Game.find_by(name: params[:game][:name]).present?
      game = Game.find_by(name: params[:game][:name])
      @play = Play.where(user_id: current_user.id, game_id: game.id).first_or_create
      authorize @play
      unless @play.user.admin?
        ActionCable.server.broadcast("game_#{game.id}", {
        new_player: @play.user.email
      })
      end
      redirect_to play_path(@play)
    else
      @play = Play.new
      authorize @play
      # flash[:alert] = "wrong name... please try again!"
      redirect_to profile_path(wrong_name: true)
    end
  end

  def index
    @game = Game.find(params[:game_id])
    # @result = current_user.plays.find_by(game: @game).score
    @play = @game.plays.find_by(user_id: current_user.id)
    @play.score = params[:score]
    @play.finished = true
    @play.save

    @plays = policy_scope(Play).where(game: @game).where(finished: true).order(score: :desc)

    ActionCable.server.broadcast("game_#{@game.id}", {
      new_finisher: current_user.email,
      new_score: params[:score] #current_user.plays.find_by(game: @game).score
      })
  end

  def game_boat
    authorize current_user
    @play = Play.find(params[:id])
    @game = @play.game
  end
end
