class Post < ApplicationRecord
  has_many :favorites
  belongs_to :user
  belongs_to :genre

  validates :title, presence: true
  validates :desired_area, presence: true

  enum gender: { "男性":1, "女性":2, "どちらでも":3 }

  attachment :image

  # バッチ処理
  _monthly_from  = Time.current.at_beginning_of_day
  _monthly_to    = (_monthly_from + 1.month)

  def self.monthly_destroy_all
    posts = Post.where(updated_at: _monthly_from..._monthly_to)
    posts.destroy_all
  end
end
