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
  validates_length_of :body, minimum: 15
end
