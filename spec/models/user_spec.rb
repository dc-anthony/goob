require 'rails_helper'

RSpec.describe User, type: :model do
  describe "add some examples to (or delete) #{__FILE__}"
  guest_user = FactoryBot.create(:user, role: "guest")
  discord_user = FactoryBot.create(:user, role: "discord_user")
  admin_user = FactoryBot.create(:user, role: "admin")
end
