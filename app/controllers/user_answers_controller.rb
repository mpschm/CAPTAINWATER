class UserAnswersController < ApplicationController
  def create
    # create une UserAnswer entre le play et la answer
    # redirect vers la show du play + params de la question de l'answer
    #  (pour choisir la prochaine question)
    @answer = Answer.find(params[:user_answer][:answer_id])
    @play = Play.find(params[:play_id])
    @user_answer = UserAnswer.new
    @user_answer.answer = @answer
    @user_answer.play = @play
    @question = @answer.question
    # @question.step += 1
    # @question.save!
    authorize @user_answer
    if @user_answer.save(user_answer_params)
      # retrieve next step from params
      redirect_to play_path(@play)
    else
      render 'plays/show'
    end
  end

  private

   def user_answer_params
    params.require(:user_answer).permit(:answer_id, :play_id)
  end

end
