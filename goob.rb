# frozen_string_literal: true

require 'discordrb'
require 'json'
require 'pry'


goob_token = 'NTcwMTIyNzA5MjAwMTQyMzM3.XNmZNg.af34LlnC5DjVKiiqIQhWUc3G3AI'
goob_bot = Discordrb::Bot.new token: goob_token

puts "This bot's invite URL is #{goob_bot.invite_url}."

binding.pry

goob_bot.message do |event|
  binding.pry
  server = event.server
  server_name = event.server.name
  server_id = event.server.id
  server_channels = event.server.channels
  channel = event.channel
  channel_name = event.channel.name
  channel_id = event.channel.id
  message = event.message
  message_content = event.message.content
  message_id = event.message.id
  message_timestamp = event.message.timestamp
  message_author = event.message.author
  message_channel = event.message.channel
end

goob_bot.run
