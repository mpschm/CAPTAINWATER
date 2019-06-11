class GamesController < ApplicationController

  def new
    @game = Game.new
    authorize @game
  end

  def create
    @game = Game.new(game_params)
    authorize @game
    @game.user = current_user
    if @game.save
      @play = Play.new
      @play.user = current_user
      @play.game = @game
      @play.save
      redirect_to play_path(@play)
    else
      render :new
    end
  end

  def launch
    @game = Game.find(params[:id])
    authorize @game
    ActionCable.server.broadcast("game_#{@game.id}", {
      game_launched: true
    })
    head :no_content
    # @play = @game.plays.find_by(user: current_user)
    # @questions = @game.questions
    # @user_answer = UserAnswer.new
    # render "plays/show"
  end

  def stop
    @game = Game.find(params[:id])
    authorize @game
    ActionCable.server.broadcast("game_#{@game.id}", {
      game_finished: true
    })
    head no_content
  end

  private

  def game_params
    params.require(:game).permit(:name, :code, :current_step, :user_id)
  end
end
