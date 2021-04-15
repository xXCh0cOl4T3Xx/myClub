class CreateRemovals < ActiveRecord::Migration[6.1]
  def change
    create_table :removals do |t|
      t.decimal :value
      t.text :description

      t.timestamps
    end
  end
end
