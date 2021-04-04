class ChangeColumnToAllowNull < ActiveRecord::Migration[5.2]
  def up
    change_column :posts, :image_id, :string, null: true
  end

  def down
    change_column :posts, :image_id, :string, null: false
  end
end
