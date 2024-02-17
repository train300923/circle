class AddBiographyToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :biography, :string
  end
end
