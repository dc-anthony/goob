class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.belongs_to :user
      t.belongs_to :ip_address
    end
  end
end
