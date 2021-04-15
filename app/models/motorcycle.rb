class Motorcycle < ApplicationRecord
    belongs_to :user
    has_one :users
end
