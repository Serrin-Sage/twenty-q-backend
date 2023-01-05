class ChatLobbyChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_lobby_#{params[:lobby_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stop_all_streams
  end
end
