class FamilyMember < ApplicationRecord
  belongs_to :user
  belongs_to :member_reference
end
