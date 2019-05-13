class Channel < ApplicationRecord
  belongs_to :server
  has_many :messages

  validates :channel_name, presence: true 
end
