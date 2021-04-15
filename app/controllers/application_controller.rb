class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  #ログイン後の遷移パス
  def after_sign_in_path_for(resource)
    if user_signed_in?
      flash[:notice] = "ログインに成功しました！"
      posts_top_path
    else
      root_path
    end
  end

  #新規登録後の遷移パス
  def after_sign_up_path(resource)
    if user_signed_up?
      flash[:notice] = "会員登録しました！"
      root_path
    else
      root_path
    end
  end

  #ログアウト後の遷移
  def after_sign_out_path_for(resource)
    if resource == :admin
      admin_session_path
    else
      flash[:notice] = "ログアウトしました！"
      homes_top_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :nickname, :gender, :birthday, :postal_code, :prefecture_code, :municipality, :nearest_station, :is_deleted, :uid, :provider])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end

end
