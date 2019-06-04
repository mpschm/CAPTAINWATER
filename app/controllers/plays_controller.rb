class PlaysController < ApplicationController
  def show
    authorize current_user
  end

  def new
    authorize @play
  end

  def create
    authorize @play
  end
end
