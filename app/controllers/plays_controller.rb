class PlaysController < ApplicationController
  def show
    @play = Play.find(params[:id])
    authorize @play
    @game = @play.game

    questions = @game.questions.where(step: @game.current_step, played: false)
    @question = questions.first
    @answers = @question.answers
    @user_answer = UserAnswer.new
    @next_step = questions.count > 1 ? @game.current_step : @game.current_step + 1
  end

  # def new
  #   @play = Play.new(play_params)
  #     if @Play.save
  #       redirect_to
  #   # authorize current_user
  # end

  # def create
  #   @play = Play.new(play_params)
  #     if @play.save
  #   authorize @play
  #   redirect_to play_path(@play)
  # end

  # Timer

  # def countdown(seconds)
  #   date1 = Time.now + seconds
  #   while Time.now < date1
  #     t = Time.at(date1.to_i - Time.now.to_i)
  #     puts t.strftime('%M:%S')
  #     sleep 1
  #   end
  # end
end
