class Room < ApplicationRecord
  has_many :entries
  has_many :messages
  has_many :notifications

  validates :name, presence: true
end
