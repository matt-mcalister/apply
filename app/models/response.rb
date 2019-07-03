class Response < ApplicationRecord
  validates :value, presence: true

  belongs_to :application
  belongs_to :input
end
