class User < ApplicationRecord
  has_many :posts

  validates :username, length: { in: 4..12 }
  validates :password, length: { in: 6..16 }
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
end
