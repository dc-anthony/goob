# frozen_string_literal: true

require 'discordrb'
require 'json'
require 'pry'


goob_token = 'TsGMhznBlMLnBJKN20BzwWvszLfmk85s'
goob_bot = Discordrb::Bot.new token: goob_token

puts "This bot's invite URL is #{goob_bot.invite_url}."

goob_bot.message do |event|
  # stuff here
end

goob_bot.run
