# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

discord_server_name_1 = "Goob Testing Server"
discord_server_id_1 = 570746041817890826
discord_channel_name_1 = "general"
discord_channel_id_1 = 570746041817890828
discord_message_author_name_1 = "dc"
discord_message_author_id_1 = 570120902583517196
discord_message_author_discriminator_1 = "1053"
discord_message_id_1 = 578972803621978113
discord_message_timestamp_1 = "2019-05-17 15:51:13 +0000"
discord_message_content_1 = "Hello, Goob!"



message_1 = Message.create!(
  discord_server_name: discord_server_name_1,
  discord_server_id: discord_server_id_1,
  discord_channel_name: discord_channel_name_1,
  discord_channel_id: discord_channel_id_1,
  discord_message_author: discord_message_author_name_1,
  discord_message_id: discord_message_id_1,
  discord_message_timestamp: discord_message_timestamp_1,
  discord_message_content: discord_message_content_1
)
