class MessagesController < ApplicationController
    def index
        message = Message.all
        render json: message
    end

    def create
        message = Message.create!(content: params[:content], user_id: 1)
        ActionCable.server.broadcast('live_feed', {
            post: message
        })
        render json: message
    end
end
