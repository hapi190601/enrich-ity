class ChangeColumnInNotifications < ActiveRecord::Migration[5.2]
  def change
    rename_column :notifications, :message_id, :direct_message_id
  end
end
