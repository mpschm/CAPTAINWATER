class WaterFtCalculatorsController < ApplicationController

  def new
    authorize current_user
  end

  def create
    skip_authorization
    redirect_to new_game_path
  end
end
