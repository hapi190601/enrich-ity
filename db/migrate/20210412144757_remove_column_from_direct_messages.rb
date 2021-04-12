class RemoveColumnFromDirectMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :direct_messages, :content, :string
  end
end
