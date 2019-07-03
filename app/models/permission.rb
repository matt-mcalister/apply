class Permission < ApplicationRecord
  validates :name, presence: true
  
  belongs_to :role
end
