class GamesController < ApplicationController

     def index 
        render json: Game.all
    end

    def show
        render json: Game.find_by!(id: params[:id])
    end
    
    def create
        game = Game.create(category: params[:category], answer: params[:answer], lobby_id: params[:lobby_id])
        render json: game
    end

end
