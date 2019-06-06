class GamesController < ApplicationController
  def new
    @game = Game.new
    authorize @game
    @game = Game.new
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
    authorize current_user
  end

  private

  def game_params
    params.require(:game).permit(:name, :code, :current_step, :user_id)
  end
end
