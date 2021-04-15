class User < ApplicationRecord
  belongs_to :faction
  belongs_to :godfather
  belongs_to :motorcycle
  enum kind: [:admin, :treasurer]
  enum position: [:president, :v_president, :director, :member, :prospect, :mirror, :son]
  enum status: [:active, :inactive, :expelled]
  enum marital: [:single, :married]
  has_many :addresses
  has_one :factions
  has_one :godfathers
  has_many :motorcycles
  has_many :monthlys
  has_many :family_members
end
