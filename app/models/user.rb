class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 6..20 }
  validates :password, presence: true, length: { in: 12..50 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  has_many :posts
  has_many :comments
end
