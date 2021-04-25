class Post < ApplicationRecord
  has_many :favorites
  belongs_to :user
  belongs_to :genre

  validates :title, :presence => true
  validates :content, :presence => true
  validates :gender, :presence => true

  enum :gender => { :"男性" => 1, :"女性" => 2, :"どちらでも" => 3 }

  attachment :image

  is_impressionable

  def prefecture_name
    JpPrefecture::Prefecture.find(:code => prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(:name => prefecture_name).code
  end

  def favorited_by?(user)
    favorites.where(:user_id => user.id).exists?
  end

  # バッチ処理1
  _monthly_to  = Time.current.at_beginning_of_day
  _monthly_from = (_monthly_to - 1.month)

  def self.monthly_destroy_all
    posts = Post.where.not(:updated_at => _monthly_from..._monthly_to)
    posts.destroy_all
  end

end
