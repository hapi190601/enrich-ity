class Genre < ApplicationRecord
  has_many :posts

  validates :name, presence: true
  # バッチ処理確認用にコメントアウトしてる
  # 確認後にコメントアウト外す！
  # validates :name, uniqueness: true

  # # バッチ処理確認用(確認できたら消す)
  # def self.test_genre_create
  #   Genre.create(name: "バッチ処理テスト")
  # end
end
