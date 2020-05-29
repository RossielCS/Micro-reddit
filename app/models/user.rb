class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 4 }
  has_many :posts
  has_many :comments
end
