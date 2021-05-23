class Private::UsersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @users = User.page(params[:page]).per(15)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def out
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "ユーザーを強制退会させました。"
    redirect_to private_users_path
  end
end
