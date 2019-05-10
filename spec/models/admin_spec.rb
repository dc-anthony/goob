require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe "add some examples to (or delete) #{__FILE__}"
  admin_user = FactoryBot.create(:user, role: "admin")
end
