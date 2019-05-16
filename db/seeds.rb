# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user_1 = User.create!(email:"user@user.com", role:"admin", password:"password")

admin_1 = Admin.create!(user: user_1)

server_1 = Server.create!(admin: admin_1, server_name:"seed server", discord_server_id:"1234567890", owner: user_1)

channel_1 = Channel.create!(server: server_1, channel_name:"seed channel")

message_1 = Message.create!(channel: channel_1, user: user_1, discord_message_id:"0987654321", message_content:"seed message content", timestamp:"timestamp")
