class Public::NotificationsController < ApplicationController
  before_action :authenticate_user!

  # def index
  #   if user_signed_in?
  #     notifications = current_user.passive_notifications.where(checked: false).page(params[:page]).per(5)

  #     # 自分がチャットを送った時の通知は表示しない。(相手がチャットを送った時のみ)
  #     @my_notifications = notifications.where.not(visitor_id: current_user.id)

  #     all_false_notifications = current_user.passive_notifications.where(checked: false).all
  #     my_all_false_notifications = all_false_notifications.where.not(visitor_id: current_user)
  #     @notification_counts = my_all_false_notifications.count
  #   end

  #   respond_to do |format|
  #     format.html
  #     format.js
  #   end
  # end

  # 通知の既読処理
  def checked
    notifications = current_user.passive_notifications.all

    notifications.where(checked: false).each do |notification|
      notification.update_attributes(checked: true)
    end

    redirect_back(fallback_location: root_url)
  end
end
