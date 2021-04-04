class AddPrefectureToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :prefecture, :string
  end
end
