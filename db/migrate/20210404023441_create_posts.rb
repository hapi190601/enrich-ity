class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id, null: false
      t.integer :genre_id, null: false
      t.string :title, null: false
      t.text :content, null: false
      t.string :age, null: false
      t.integer :gender, null: false
      t.string :prefecture, null: false
      t.string :municipality, null: false
      t.string :image, null: false

      t.timestamps
    end
  end
end
