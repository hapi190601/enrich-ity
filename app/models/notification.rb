class Notification < ApplicationRecord
  # 新しいデータから順番に取得
  default_scope -> { order(:created_at => :desc) }
  belongs_to :visitor, :class_name => 'User', :foreign_key => 'visitor_id', :optional => true
  belongs_to :visited, :class_name => 'User', :foreign_key => 'visited_id', :optional => true
  belongs_to :direct_message
  belongs_to :room

  validates :action, :presence => true
  validates :checked, :inclusion => { :in => [true, false] }
end
