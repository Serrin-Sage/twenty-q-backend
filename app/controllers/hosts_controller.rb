class HostsController < ApplicationController

    def index 
        render json: Host.all
    end

    def show
        render json: Host.find_by!(id: params[:id])
    end
    
    def create
        host = Host.create(name: params[:name], image: params[:image])
        if host.valid?
            render json: host
        else 
            render json: host.errors.full_messages, status: 422
        end
    end
end
