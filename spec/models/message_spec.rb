require 'rails_helper'

RSpec.describe Message, type: :model do
  describe "create a new message (Message.create!)" do
    message_1 = FactoryBot.create(:message)
  end
end
