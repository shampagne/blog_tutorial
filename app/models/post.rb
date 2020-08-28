# app/mdels/post.rb

class Post < ApplicationRecord
  validates :title, length: { in: 1..20 }
  validates :brief, length: { in: 1..30 }
end