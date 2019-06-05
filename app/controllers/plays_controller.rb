class PlaysController < ApplicationController
  def show
    authorize current_user
  end

  def new
    authorize current_user
  end

  def create
    authorize @play
  end
end
