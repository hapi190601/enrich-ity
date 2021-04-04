class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :entries, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :inquiries, dependent: :destroy

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
  validates :prefecture, presence: true
  validates :municipality, presence: true
  validates :uid, presence: true
  validates :proveider, presence: true
end
