class User < ApplicationRecord
  belongs_to :faction
  belongs_to :godfather
end
