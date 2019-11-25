class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true
      t.integer :number_of_people

      t.timestamps
    end
  end
end
