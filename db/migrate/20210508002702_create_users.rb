class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :kind
      t.integer :position
      t.integer :status
      t.date :year
      t.date :marital
      t.string :phone
      t.string :emergency_phone
      t.date :date_add
      t.date :date_baptized
      t.string :occupation
      t.string :function
      t.text :notes
      t.date :birth
      t.string :cpf
      t.string :photo
      t.references :faction, null: true, foreign_key: true
      t.references :godfather, null: true, foreign_key: true

      t.timestamps
    end
  end
end
