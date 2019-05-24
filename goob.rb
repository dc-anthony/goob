# frozen_string_literal: true

require 'discordrb'
require 'json'
require_relative "./config/environment"
# require Rails.root.join("app/models/Message")

goob_token = 'NTcwMTIyNzA5MjAwMTQyMzM3.XOIJsw.a9KkrppIgGnb4HS2lrrQIN-PjoY'
goob_bot = Discordrb::Bot.new token: goob_token

puts "This bot's invite URL is #{goob_bot.invite_url}."

goob_bot.message do |event|
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
