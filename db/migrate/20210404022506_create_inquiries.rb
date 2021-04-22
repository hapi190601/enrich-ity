class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.integer :user_id, :null => false
      t.string :title, :null => false
      t.text :content, :null => false

      t.timestamps
    end
  end
end
