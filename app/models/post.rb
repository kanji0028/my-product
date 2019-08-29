class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  validates :price, presence: true
  validates :category, presence: true

end
