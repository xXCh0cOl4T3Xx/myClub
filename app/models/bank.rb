class Bank < ApplicationRecord
    enum account_type: [:corrente, :poupança]
  has_many :deposits
  has_many :removal
end
