class Public::NotificationsController < ApplicationController
  before_action :authenticate_user!

  def index
    # kaminari用
    notifications = current_user.passive_notifications.where(:checked => false).page(params[:page]).per(4)
    @my_notifications = notifications.where.not(:visitor_id => current_user.id)

    # 通知全件用
    all_false_notifications = current_user.passive_notifications.where(:checked => false).all
    @unchecked_notifications = all_false_notifications.where.not(:visitor_id => current_user)

    respond_to do |format|
      format.html
      format.js
    end
  end

  # 通知の既読処理
  def checked
    notifications = current_user.passive_notifications.all

    notifications.where(:checked => false).each do |notification|
      notification.update_attributes(:checked => true)
    end

    flash[:notice] = "通知を全て既読処理しました"
    redirect_back(:fallback_location => root_url)
  end
end
