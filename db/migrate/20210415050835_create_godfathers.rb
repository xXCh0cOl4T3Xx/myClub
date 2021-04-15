class CreateGodfathers < ActiveRecord::Migration[6.1]
  def change
    create_table :godfathers do |t|
      t.references :godfather, null: false, foreign_key: true
      t.references :goddaughter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
