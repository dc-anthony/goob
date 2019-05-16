class Message < ApplicationRecord
  belongs_to :channel
  belongs_to :user

  validates :message_content, presence: true
  validates :timestamp, presence: true
end
