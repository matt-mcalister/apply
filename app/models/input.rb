class Input < ApplicationRecord
  validates :name, presence: true

  belongs_to :input_type
  belongs_to :opportunity
end
