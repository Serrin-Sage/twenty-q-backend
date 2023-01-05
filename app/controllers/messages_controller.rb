class MessagesController < ApplicationController

    def index 
        render json: Message.all
    end
    
    def show
        message = Message.where(lobby_id: params[:lobby_id])
        render json: message
    end

    def create
        message = Message.create(content: params[:content], user_id: params[:user_id], lobby_id: params[:lobby_id])
        ActionCable.server.broadcast("chat_lobby_#{message.lobby_id}", {
            post: message
        })
        if  message.valid?
            render json: message
      else
        render json: message.errors.full_messages, status: 422
      end 
       
    end
end
