class Organization < ApplicationRecord
  validates :name, presence: true
  has_many :opportunities
end
