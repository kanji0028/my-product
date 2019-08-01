class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates_uniqueness_of :post_id, scope: :user_id
  #人が１つの投稿に対して、１つしかいいねをつけられないように
end
