require 'discordrb'
require 'json'
require 'pry'

class ChatChannel < ApplicationCable::Channel

  goob_token = 'NTcwMTIyNzA5MjAwMTQyMzM3.XNmZNg.af34LlnC5DjVKiiqIQhWUc3G3AI'
  goob_bot = Discordrb::Bot.new token: goob_token

  puts "This bot's invite URL is #{goob_bot.invite_url}."

  def subscribed
    stream_from "chat_#{params[:id]}"
    # stream_from "chat_channel"
    # chat = Channel.find(params[:id])
    # ActionCable.server.broadcast("channel_#{{params[:id]}}", )
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    puts data
    # Currently, we dont actually use this code that much. But you would have to set up these models if you want to record the conversations in your chat.
    channel = Channel.find_by(id: params[:id])
    new_message = Message.create(body: data["message"], user: User.find(data["user"]["user_id"]))
    channnel.messages << new_message

    chat_key = chat.id

    chat_json = {
      "chat_key": chat_key,
      "message": new_message.body,
      "messageId": new_message.id,
      "user": data["user"]
    }

    ActionCable.server.broadcast("chat_#{params[:id]}", chat_json)
  end

  def create_messages(message)
  end

  goob_bot.message do |event|
    binding.pry
    new_server = Server.new
    # new_server.server = event.server
    new_server.server_name = event.server.name
    new_server.discord_server_id = event.server.id
    new_server.owner = event.server.owner
    # server_channels = event.server.channels
    # channel = event.channel
    channel_name = event.channel.name
    discord_channel_id = event.channel.id

    new_message = Message.new
    # new_message.message = event.message
    new_message.message_content = event.message.content
    new_message.discord_message_id = event.message.id
    new_message.discord_message_timestamp = event.message.timestamp
    new_message.message_author = event.message.author
    new_message.message_channel = event.message.channel

    if new_message.save && new_channel.save && new_server.save
      #do some action cable stuff here
    end
  end

  goob_bot.run
end


# chat_key = "#{Time.now.to_datetime.strftime('%Q')}-#{current_user.id}"
