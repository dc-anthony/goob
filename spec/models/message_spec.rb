require 'rails_helper'

RSpec.describe Message, type: :model do
  describe "create a new message (Message.create!)" do
    message_1 = Message.create!(
      discord_server_name: "Goob Testing Server",
      discord_server_id: 570746041817890826,
      discord_channel_name: "general",
      discord_channel_id: 570746041817890828,
      discord_message_author: "dc",
      discord_message_author_avatarUrl: "https://cdn.discordapp.com/avatars/570120902583517196/3473ec2f35fa7f020c21491ed5c65d67.webp",
      discord_message_id: 579061607553040404,
      discord_message_timestamp: 2019-05-17,
      discord_message_content: "Let's test this.")
  end
end
