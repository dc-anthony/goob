class HomesController < ApplicationController
  def index
    @messages = Message.all
  end
end
