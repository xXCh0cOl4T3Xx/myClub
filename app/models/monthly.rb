class Monthly < ApplicationRecord
  belongs_to :user
  has_one :users
end
