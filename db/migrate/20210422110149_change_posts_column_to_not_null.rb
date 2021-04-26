class ChangePostsColumnToNotNull < ActiveRecord::Migration[5.2]

  def up
    change_column :posts, :municipality, :string, null: true
  end

  def down
    change_column :posts, :municipality, :string, null: false
  end
end
