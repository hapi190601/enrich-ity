class RemoveAddressFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :address, :string, null: false
  end
end
