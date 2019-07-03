class User < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  validate :email_format

  has_many :organization_admins, foreign_key: 'admin_id'

  private
  def email_format
    if email && !email.match(/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/)
      errors.add(:email, "must be in the format email@domain.tld")
    end
  end
end
