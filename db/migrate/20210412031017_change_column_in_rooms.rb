class ChangeColumnInRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :name, :string
    remove_column :rooms, :user_id, :integer
  end
end
