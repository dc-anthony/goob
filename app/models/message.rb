class Message < ApplicationRecord
  validates :discord_server_name, presence: true
  validates :discord_server_id, presence: true
  validates :discord_channel_name, presence: true
  validates :discord_channel_id, presence: true
  validates :discord_message_author, presence: true
  validates :discord_message_author_avatarUrl, presence: true
  validates :discord_message_id, presence: true
  validates :discord_message_timestamp, presence: true
  validates :discord_message_content, presence: true
end
