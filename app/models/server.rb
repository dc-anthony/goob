class Server < ApplicationRecord
  belongs_to :admin
  has_many :channels
  has_many :messages, through: :channels

  validates :server_name, presence: true
  validates :discord_server_id, null: false
end
