class Post < ApplicationRecord
  has_many :favorites
  belongs_to :user
  belongs_to :genre

  validates :title, presence: true
  validates :content, presence: true
  validates :prefecture, presence: true

  attachment :image
end
