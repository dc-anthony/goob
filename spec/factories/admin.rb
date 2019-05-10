require 'factory_bot_rails'

FactoryBot.define do
  factory :admin do
    sequence(:email) {|n| "user#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
    role { "admin" }
  end
end
