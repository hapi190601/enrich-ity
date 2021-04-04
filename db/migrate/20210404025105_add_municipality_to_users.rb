class AddMunicipalityToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :municipality, :string
  end
end
