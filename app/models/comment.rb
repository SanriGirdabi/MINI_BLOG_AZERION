class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, presence: true
  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :date, presence: true
  validates_length_of :body, minimum: 1
end
