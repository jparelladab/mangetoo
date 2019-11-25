class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :city
      t.float :latitude
      t.float :longitude
      t.string :category
      t.integer :total_rating
      t.string :website
      t.string :phone_number

      t.timestamps
    end
  end
end
