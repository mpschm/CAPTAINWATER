class GamesController < ApplicationController
  def new
    authorize @game
    @game = Game.new
  end

  def create
    authorize @game
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
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
