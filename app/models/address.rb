class Address < ApplicationRecord
    has_one :factions
    has_many :users
end
