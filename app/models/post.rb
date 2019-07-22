class Post < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :body, presence: true

end