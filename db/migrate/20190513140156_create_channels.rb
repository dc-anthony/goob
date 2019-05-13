class CreateChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :channels do |t|
      t.belongs_to :server
      
      t.string :channel_name, null: false
    end
  end
end
