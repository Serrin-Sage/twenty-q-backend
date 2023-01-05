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
            render json: user
    end

    def destroy
        user = User.find_by!(id: params[:id])
        user.delete
    end
end
