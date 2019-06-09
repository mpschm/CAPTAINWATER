class ProfilesController < ApplicationController
  def show
    authorize current_user
    @game = Game.new
    @play = Play.new
  end
end
