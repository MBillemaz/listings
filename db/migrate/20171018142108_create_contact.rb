class CreateContact < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.integer "user_id"
      t.integer "listing_id"
      t.text "message"
    end
  end
end
