class Organization < ApplicationRecord
  validates :name, presence: true
  has_many :organization_admins
end
