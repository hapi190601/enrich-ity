class Post < ApplicationRecord
  has_many :favorites
  belongs_to :user
  belongs_to :genre

  validates :title, presence: true
  validates :content, presence: true
  validates :prefecture_code, presence: true

  enum gender: { "男性":1, "女性":2, "どちらでも":3 }

  attachment :image

  # バッチ処理
  _monthly_from  = Time.current.at_beginning_of_day
  _monthly_to    = (_monthly_from + 1.month)

  def self.monthly_destroy_all
    posts = Post.where(updated_at: _monthly_from..._monthly_to)
    posts.destroy_all
  end

  # 住所自動反映
  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end
end
