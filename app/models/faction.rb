class Faction < ApplicationRecord
  belongs_to :user
  has_many :users
  has_one :address
end
