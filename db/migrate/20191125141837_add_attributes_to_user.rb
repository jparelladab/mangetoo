class AddAttributesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :super_foodie, :boolean
    add_column :users, :admin, :boolean
    add_column :users, :default_image, :string
  end
end
