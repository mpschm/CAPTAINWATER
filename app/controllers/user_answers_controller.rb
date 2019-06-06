class UserAnswersController < ApplicationController
  def create
    raise
    # create une UserAnswer entre le play et la answer
    # redirect vers la show du play + params de la question de l'answer
    #  (pour choisir la prochaine question)
    @user_answer = UserAnswer.new
      if @user_answer.save
        # retrieve next step from params
        redirect_to play_path(@play.game.current_step)
      else
        render 'plays/show'
      end
  end
end
