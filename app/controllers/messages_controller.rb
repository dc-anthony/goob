class MessagesController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    messages = Message.all
    render json: messages
  end

  def create
    user_input = JSON.parse(request.body.read)
    message = Message.new(
      discord_server_name: discord_server_name,
      discord_server_id: discord_server_id,
      discord_channel_name: discord_channel_name,
      discord_channel_id: discord_channel_id,
      discord_message_author: discord_message_author,
      discord_message_id: discord_message_id,
      discord_message_timestamp: discord_message_timestamp,
      discord_message_content: discord_message_content
    )

    if message.save
     render json: { message: message }
    else
     render json: { error: message.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    message = Message.find(params[:id])
    render json: {message: message}
  end
end
