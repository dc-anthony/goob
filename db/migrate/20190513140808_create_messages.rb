class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :discord_server_name, null: false
      t.string :discord_server_id, null: false
      t.string :discord_channel_name, null: false
      t.string :discord_channel_id, null: false
      t.string :discord_message_author, null: false
      t.string :discord_message_id, null: false
      t.string :discord_message_timestamp, null: false
      t.string :discord_message_content, null: false
    end
  end
end
