# app/mdels/post.rb

class Post < ApplicationRecord
  validates :title, length: { in: 1..20 }
  validates :brief, length: { in: 1..30 }
  # PostはTagをたくさん持っている
  has_many :post_tags
  # PostはTagをPostTag中間テーブルを介してたくさん持っている
  has_many :tags, through: :post_tags, dependent: :destroy
  belongs_to :user #追加
  mount_uploader :image, ImagesUploader # 追加
end