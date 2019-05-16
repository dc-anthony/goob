class CreateServers < ActiveRecord::Migration[5.2]
  def change
    create_table :servers do |t|
      t.belongs_to :admin, null: false

      t.string :server_name, null: false
      t.string :discord_server_id, null: false
      t.text :owner, null: false
    end
  end
end
