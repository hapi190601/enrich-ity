class AddColumnToDirectMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :direct_messages, :content, :string
  end
end
