class CreateServers < ActiveRecord::Migration[5.2]
  def change
    create_table :servers do |t|
      t.belongs_to :admin, null: false

      t.string :server_name, null: false
    end
  end
end
