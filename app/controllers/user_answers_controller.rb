class UserAnswersController < ApplicationController
  def create
    authorize current_user
  end
end
