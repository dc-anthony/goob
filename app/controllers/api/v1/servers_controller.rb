class Api::V1::ServersController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    servers = Server.all
    render json: servers
  end
end
