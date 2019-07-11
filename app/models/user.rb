class User < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  validate :email_format

  has_secure_password

  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :organizations, through: :user_roles
  has_many :permissions, through: :user_roles

  private
  def email_format
    if email && !email.match(/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/)
      errors.add(:email, "must be in the format email@domain.tld")
    end
  end
end
