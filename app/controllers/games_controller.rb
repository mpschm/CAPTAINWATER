class GamesController < ApplicationController
  def new
    @game = Game.new
    authorize @game
  end

  def create
    @game = Game.new(game_params)
        if @game.save
            redirect_to play_path(@play)
    authorize @game
  end

  def launch
    authorize current_user
  end
end
