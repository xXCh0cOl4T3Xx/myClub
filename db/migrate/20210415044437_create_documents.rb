class CreateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :documents do |t|
      t.string :name
      t.date :year
      t.string :uf
      t.string :number
      t.string :description

      t.timestamps
    end
  end
end
