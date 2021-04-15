class CreateFactions < ActiveRecord::Migration[6.1]
  def change
    create_table :factions do |t|
      t.string :name
      t.date :data_found
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
