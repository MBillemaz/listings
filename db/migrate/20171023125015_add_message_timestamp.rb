class AddMessageTimestamp < ActiveRecord::Migration[5.1]
  def change
    add_timestamps :messages, default: DateTime.now
    change_column_default :messages, :created_at, nil
    change_column_default :messages, :updated_at, nil
  end
end
