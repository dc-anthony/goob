class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.belongs_to :user
      t.belongs_to :channel

      t.string :discord_message_id
      t.string :discord_message_timestamp
      t.text :message_content, null: false
      t.string :timestamp, null: false
    end
  end
end
