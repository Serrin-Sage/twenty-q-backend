class GamesController < ApplicationController

     def index 
        render json: Game.all
    end
    
    def create
        game = Game.create(category: params[:category], answer: params[:answer], lobby_id: params[:lobby_id])
        render json: game
    end

end
