class UserAnswersController < ApplicationController
  def create
    # create une UserAnswer entre le play et la answer
    # redirect vers la show du play + params de la question de l'answer
    #  (pour choisir la prochaine question)
    @user_answer = UserAnswer.new
      if @user_answer.save
        redirect_to play_path(@play.game.current_step)
  end
end
