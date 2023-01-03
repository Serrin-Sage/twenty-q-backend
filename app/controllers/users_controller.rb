class UsersController < ApplicationController

     def index 
        render json: User.all
    end
    
    def create
        user = User.create(name: params[:name], image: params[:image], lobby_id: params[:lobby_id])
        render json: user
    end

end
