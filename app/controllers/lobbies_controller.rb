class LobbiesController < ApplicationController

    def index 
        render json: Lobby.all
    end
    
    def create
        lobby = Lobby.create(host_id: params[:host_id], lobbyname: params[:lobbyname], players: params[:players], password: params[:password])
        render json: lobby
    end

end
