class IpAddress < ApplicationRecord
  has_many :locations
  has_many :users, through: :locations

  validates :ip, presence: true 
end
