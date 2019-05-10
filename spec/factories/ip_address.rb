require 'factory_bot_rails'

FactoryBot.define do
  factory :ip_address do
    ip { "0.0.0.0" }
  end
end
