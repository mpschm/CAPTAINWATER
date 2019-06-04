class WaterFtCalculatorsController < ApplicationController

  def new
    authorize current_user
  end

  def create
    authorize current_user
  end
end
