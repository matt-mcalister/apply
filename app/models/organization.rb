class Organization < ApplicationRecord
  validates :name, presence: true
  has_many :organization_admins
  has_many :admins, through: :organization_admins
end
