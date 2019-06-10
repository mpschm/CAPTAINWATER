class PlayChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    p params
    stream_from "game_#{params[:game_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
