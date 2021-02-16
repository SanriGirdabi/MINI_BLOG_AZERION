class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :header, presence: true
  validates :color, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
  validates :title, presence: true
  validates :design, presence: true
  validates :date, presence: true
end
