class AddIndexes < ActiveRecord::Migration[5.2]
  def change
    add_index :genres, :name
    add_index :posts, :title
  end
end
