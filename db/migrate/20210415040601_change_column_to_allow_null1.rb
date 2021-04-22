class ChangeColumnToAllowNull1 < ActiveRecord::Migration[5.2]
  def up
    change_column :posts, :age, :string, :null => true
  end

  def down
    change_column :posts, :age, :string, :null => false
  end
end
