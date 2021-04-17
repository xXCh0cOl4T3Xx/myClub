class AddAccountTypeToBank < ActiveRecord::Migration[6.1]
  def change
    add_column :banks, :account_type, :integer
  end
end
