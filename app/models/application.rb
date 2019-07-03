class Application < ApplicationRecord
  belongs_to :user_role
  belongs_to :opportunity
end
