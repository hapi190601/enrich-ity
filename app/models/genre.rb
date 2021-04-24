class Genre < ApplicationRecord
  has_many :posts

  validates :name, :presence => true
  validates :name, uniqueness: true

  # # バッチ処理確認用(確認できたら消す)
  # def self.test_genre_create
  #   Genre.create(name: "バッチ処理テスト")
  # end
end
