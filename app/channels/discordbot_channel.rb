class DiscordbotChannel < ApplicationCable::Channel
  def subscribed
    stream_from "discordbot_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stop_all_streams
  end

  def run_goob
    goob_token = 'NTcwMTIyNzA5MjAwMTQyMzM3.XNmZNg.af34LlnC5DjVKiiqIQhWUc3G3AI'
    goob_bot = Discordrb::Bot.new token: goob_token

    puts "This bot's invite URL is #{goob_bot.invite_url}."

    goob_bot.message do |event|
      # new_server.server = event.server
      server_name = event.server.name
      discord_server_id = event.server.id
      owner = event.server.owner
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

      # if new_message.save && new_channel.save && new_server.save
      #   #do some action cable stuff here
      # end
    end

    goob_bot.run
  end
end
