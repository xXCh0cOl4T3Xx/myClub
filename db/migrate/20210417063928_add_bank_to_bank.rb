class AddBankToBank < ActiveRecord::Migration[6.1]
  def change
    add_column :banks, :bank, :string
  end
end
