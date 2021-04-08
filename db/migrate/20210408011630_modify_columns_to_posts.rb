class ModifyColumnsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :desired_area, :string

    remove_column :posts, :municipality, :string
    remove_column :posts, :prefecture_code, :integer
  end
end
