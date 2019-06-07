class UserAnswersController < ApplicationController
  def create
    # create une UserAnswer entre le play et la answer
    # redirect vers la show du play + params de la question de l'answer
    #  (pour choisir la prochaine question)
    @answer = params[:user_answer][:answer_id].present? ? Answer.find(params[:user_answer][:answer_id]) : nil
    @play = Play.find(params[:play_id])
    @next_step = params[:user_answer][:next_step]
    @user_answer = UserAnswer.new
    @user_answer.answer = @answer
    @user_answer.play = @play
    # @question = @answer.question
    authorize @user_answer
    if @user_answer.save
      @game = @play.game
      @game.current_step = @next_step
      @game.save
      if @user_answer.answer && @user_answer.answer.correct?
        @play.score += 1
        @play.save
      else
        @play.score
      end
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
