class Opportunity < ApplicationRecord
  validates :name, :description, presence: true

  belongs_to :organization
end
