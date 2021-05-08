class CreateBanks < ActiveRecord::Migration[6.1]
  def change
    create_table :banks do |t|
      t.string :bank
      t.integer :account_type
      t.string :account
      t.string :agency
      t.decimal :Balance

      t.timestamps
    end
  end
end
