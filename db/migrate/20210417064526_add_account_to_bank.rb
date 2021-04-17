class AddAccountToBank < ActiveRecord::Migration[6.1]
  def change
    add_column :banks, :account, :string
  end
end
