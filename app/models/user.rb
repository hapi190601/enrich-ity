class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :entries, dependent: :destroy
  has_many :direct_messages, dependent: :destroy
  has_many :rooms, through: :entries

  has_many :active_notifications, class_name: 'Notification', foreign_key: 'visitor_id', dependent: :destroy
  has_many :passive_notifications, class_name: 'Notification', foreign_key: 'visited_id', dependent: :destroy

  validates :postal_code, length: { is: 7 }
  validates :is_deleted, inclusion: { in: [true, false] }

  validates :name, presence: true
  validates :name_kana, presence: true
  validates :nickname, presence: true
  validates :gender, presence: true
  validates :birthday, presence: true
  validates :postal_code, presence: true
  validates :nearest_station, presence: true
  validates :prefecture_code, presence: true
  validates :municipality, presence: true

  enum gender: { "ひみつ":0, "男性":1, "女性":2, }

  attachment :image

  # include JpPrefecture
  # jp_prefecture :prefecture_code

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

  def active_for_authentication?
    super && (self.is_deleted == false)
  end

  def self.guest
    find_or_create_by(email: "guest@guest.com") do |user|
      user.password = SecureRandom.urlsafe_base64

      user.name = "ゲストユーザー(閲覧用)"
      user.name_kana = "ゲストユーザー(エツランヨウ)"
      user.nickname = "ゲスト"
      user.gender = 1
      user.birthday = "2000-1-2"
      user.postal_code = "1690075"
      user.prefecture_code = 13
      user.municipality = "新宿区"
      user.nearest_station = "新宿"
      user.is_deleted = false
    end
  end
end
