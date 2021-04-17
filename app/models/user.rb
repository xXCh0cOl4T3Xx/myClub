class User < ApplicationRecord
  belongs_to :faction
<<<<<<< HEAD
  belongs_to :godfather
  belongs_to :motorcycle
=======
  belongs_to :user
>>>>>>> 936719548bdc5cb4daad6349770680c37a72e515
  enum kind: [:admin, :treasurer]
  enum position: [:president, :v_president, :director, :member, :prospect, :mirror, :son]
  enum status: [:active, :inactive, :expelled]
  enum marital: [:single, :married]
  has_many :addresses
<<<<<<< HEAD
  has_one :factions
  has_one :godfathers
  has_many :motorcycles
  has_many :monthlys
  has_many :family_members
=======
 
>>>>>>> 936719548bdc5cb4daad6349770680c37a72e515
end
