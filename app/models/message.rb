class Message < ApplicationRecord
  belongs_to :channel
  belongs_to :user
  belongs_to :server, through: :channel

  validates :message_content, presence: true
  validates :timestamp, presence: true
end
