class Comment < ApplicationRecord
  validates :body, presence: true
  validates_associated :user
  validates_associated :post
  validates :user_id, presence: true
  validates :post_id, presence: true
  belongs_to :post
  belongs_to :user
end
