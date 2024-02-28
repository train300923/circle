class AddPreferredCategoryToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :preferred_category, :string
  end
end
