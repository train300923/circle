class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :category
      t.string :description
      t.float :price
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
