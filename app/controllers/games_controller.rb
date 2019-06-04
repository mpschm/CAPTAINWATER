class GamesController < ApplicationController
  def new
    authorize @game
  end

  def create
    authorize @game
  end

  def launch
    authorize current_user
  end
end
