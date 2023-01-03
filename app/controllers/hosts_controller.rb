class HostsController < ApplicationController

    def index 
        render json: Host.all
    end
    
    def create
        host = Host.create(name: params[:name])
        render json: host
    end
end
