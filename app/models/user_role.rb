class UserRole < ApplicationRecord
  belongs_to :user
  belongs_to :role
  belongs_to :organization
  has_many :permissions, through: :role
end
