class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable, :registerable
  #belongs_to :faction
  #belongs_to :godfather
  #belongs_to :motorcycle
  #belongs_to :user

  enum kind: [:admin, :treasurer]
  enum position: [:president, :v_president, :director, :member, :prospect, :mirror, :son]
  enum status: [:active, :inactive, :expelled]
  enum marital: [:single, :married]

  has_many :addresses
  has_many :motorcycles
  has_many :monthlys
  has_many :family_members
 
end
