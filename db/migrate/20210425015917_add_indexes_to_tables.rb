class AddIndexesToTables < ActiveRecord::Migration[5.2]
  def change
    add_index :direct_messages, [:user_id, :room_id]

    add_index :direct_messages, :message

    add_index :entries, [:user_id, :room_id]

    add_index :favorites, [:user_id, :post_id]

    add_index :notifications, [:visitor_id, :visited_id]
  end
end
