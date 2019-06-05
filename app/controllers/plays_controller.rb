class PlaysController < ApplicationController
  def show
    @play = Play.find(params[:id])
    authorize @play
    @game = @play.game
    @question = @game.questions.find_by(step: @game.current_step)
    @answers = @question.answers
    @user_answer = UserAnswer.new
  end

  # def new
  #   @play = Play.new(play_params)
  #     if @Play.save
  #       redirect_to
  #   # authorize current_user
  # end

  def create
    #@play = TODO
    authorize @play
    redirect_to play_path(@play)
  end
end

# Timer

# def countdown(seconds)
#   date1 = Time.now + seconds
#   while Time.now < date1
#     t = Time.at(date1.to_i - Time.now.to_i)
#     puts t.strftime('%M:%S')
#     sleep 1
#   end
# end
