class RecreateContact < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :user_id, :integer
    add_column :contacts, :listing_id, :integer
    add_column :contacts, :message, :text
  end
end
