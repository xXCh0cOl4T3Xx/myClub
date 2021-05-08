class CreateFamilyMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :family_members do |t|
      t.references :user, null: false, foreign_key: true
      t.references :member_reference, null: false, foreign_key: true

      t.timestamps
    end
  end
end
