class QuestionsController < ApplicationController
     def index 
        render json: Question.all
    end
    
    def show
        question = Question.where(lobby_id: params[:lobby_id])
        render json: question
    end

    def create
        question = Question.create(content: params[:content], user_id: params[:user_id], lobby_id: params[:lobby_id])
        ActionCable.server.broadcast("question_feed_#{question.lobby_id}", {
            post: question
        })
        if  question.valid?
            render json: question
      else
        render json: question.errors.full_messages, status: 422
      end 
       
    end
end
