class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :notifications

  validates :message, presence: true
end
