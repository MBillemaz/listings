class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    rename_table :contacts, :messages
    remove_column :messages, :listings_id
    
    create_table :conversations do |t|
      t.timestamp
      t.integer "user_id"
      t.integer "listing_id"
    end

    add_column :messages, :conversation_id, :integer
  end
end
