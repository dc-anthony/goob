class Location < ApplicationRecord
  belongs_to :user
  belongs_to :ip_address
end
