# frozen_string_literal: true

require 'discordrb'
require 'json'
require_relative "./config/environment"
# require Rails.root.join("app/models/Message")


goob_token = 'NTcwMTIyNzA5MjAwMTQyMzM3.XNmZNg.af34LlnC5DjVKiiqIQhWUc3G3AI'
goob_bot = Discordrb::Bot.new token: goob_token

puts "This bot's invite URL is #{goob_bot.invite_url}."

goob_bot.message do |event|
  # server = event.server
  # server_name = event.server.name
  # server_id = event.server.id
  # server_channels = event.server.channels
  # channel = event.channel
  # channel_name = event.channel.name
  # channel_id = event.channel.id
  # message = event.message
  # message_content = event.message.content
  # message_id = event.message.id
  # message_timestamp = event.message.timestamp
  # message_author = event.message.author
  # message_channel = event.message.channel

  discord_server_name = event.server.name
  discord_server_id = event.server.id
  discord_channel_name = event.channel.name
  discord_channel_id = event.channel.id
  discord_message_author = event.message.author.username
  discord_message_author_avatarUrl = event.author.avatar_url
  discord_message_id = event.message.id
  discord_message_timestamp = event.message.timestamp.to_s.to_date
  discord_message_content = event.message.content

  Message.create! do |m|
    m.discord_server_name = discord_server_name,
    m.discord_server_id = discord_server_id,
    m.discord_channel_name = discord_channel_name,
    m.discord_channel_id = discord_channel_id,
    m.discord_message_author = discord_message_author,
    m.discord_message_author_avatarUrl = discord_message_author_avatarUrl,
    m.discord_message_id = discord_message_id,
    m.discord_message_timestamp = discord_message_timestamp,
    m.discord_message_content = discord_message_content
  end
end

goob_bot.run
