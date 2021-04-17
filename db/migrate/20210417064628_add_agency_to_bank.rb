class AddAgencyToBank < ActiveRecord::Migration[6.1]
  def change
    add_column :banks, :agency, :string
  end
end
