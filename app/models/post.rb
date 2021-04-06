class Post < ApplicationRecord
  has_many :favorites
  belongs_to :user
  belongs_to :genre

  validates :title, presence: true
  validates :content, presence: true
  validates :prefecture_code, presence: true

  enum gender: { "男性":1, "女性":2, "どちらでも":3 }

  attachment :image

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end
end
