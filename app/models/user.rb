class User < ApplicationRecord
  belongs_to :faction
  belongs_to :user
  enum kind: [:admin, :treasurer]
  enum position: [:president, :v_president, :director, :member, :prospect, :mirror, :son]
  enum status: [:active, :inactive, :expelled]
  enum marital: [:single, :married]
  has_many :addresses
 
end
