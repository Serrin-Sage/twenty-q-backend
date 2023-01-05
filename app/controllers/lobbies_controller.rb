class LobbiesController < ApplicationController

    def index 
        render json: Lobby.all
    end

    def show
    render json: Lobby.find_by!(id: params[:id])
    end

    def create
        lobby = Lobby.create(host_id: params[:host_id], lobbyname: params[:lobbyname], players: params[:players], password: params[:password], answer: params[:answer], category: params[:category])
        if lobby.valid?
            render json: lobby
        else 
            render json: lobby.errors.full_messages, status: 422
        end
    end

    def destroy 
        lobby = Lobby.find_by(id: params[:id])
        lobby.delete
    end
end
