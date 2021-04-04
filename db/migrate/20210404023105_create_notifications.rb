class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.integer :visitor_id, null: false
      t.integer :visited_id, null: false
      t.integer :room_id, null: false
      t.integer :message_id, null: false
      t.string :action, null: false
      t.boolean :checked, null: false, default: false

      t.timestamps
    end
  end
end
