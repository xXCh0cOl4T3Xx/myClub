class CreateMotorcycles < ActiveRecord::Migration[6.1]
  def change
    create_table :motorcycles do |t|
      t.string :name
      t.integer :cc
      t.string :brand
      t.string :plate
      t.string :color
      t.date :year

      t.timestamps
    end
  end
end
