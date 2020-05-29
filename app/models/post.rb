class Post < ApplicationRecord
  belongs_to :user

  validates :title, :body, :user_id, presence: true
  validates :title, uniqueness: true
end
