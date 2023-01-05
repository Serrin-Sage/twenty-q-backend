class UsersController < ApplicationController

     def index 
        render json: User.all
    end

    def show
        user = User.find_by!(id: params[:id])
        render json: user
    end
    
    def create
        user = User.create(name: params[:name], image: params[:image])
        if (user.valid?)
            render json: user
        else
            render json: user.errors.full_messages, status: 422
        end
    end

    def destroy
        user = User.find_by!(id: params[:id])
        user.delete
    end
end
