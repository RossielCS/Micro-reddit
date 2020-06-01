class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, length: { in: 4..12 }
  validates :password, length: { in: 6..16 }
  validates :username, :email, uniqueness: true
  validates :username, :email, :password, presence: true
end
