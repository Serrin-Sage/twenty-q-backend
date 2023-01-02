class HostsController < ApplicationController

    def index 
        render json: Host.all
    end
    
    def create
        host = Host.create(username: params[:username])
        render json: host
    end
end
