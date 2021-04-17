class CreateMonthlies < ActiveRecord::Migration[6.1]
  def change
    create_table :monthlies do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :year
      t.integer :month
      t.text :notes
      t.integer :kind

      t.timestamps
    end
  end
end
