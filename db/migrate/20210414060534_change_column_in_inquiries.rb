class ChangeColumnInInquiries < ActiveRecord::Migration[5.2]
  def change
    add_column :inquiries, :name, :string
    add_column :inquiries, :email, :string

    remove_column :inquiries, :user_id, :integer
  end

end
