class Post < ApplicationRecord
  belongs_to :user

  validates :title, :body, :author_id, presence: true
  validates :title, uniqueness: true
end
