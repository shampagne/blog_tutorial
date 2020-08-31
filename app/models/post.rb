# models/post.rb

class Post < ApplicationRecord
  validates :title, length: { in: 1..20 }
  validates :brief, length: { in: 1..30 }
  has_many :post_tags
  has_many :tags, through: :post_tags, dependent: :destroy
  belongs_to :user
  mount_uploader :image, ImagesUploader
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
end