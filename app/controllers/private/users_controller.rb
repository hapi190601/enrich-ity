class Private::UsersController < ApplicationController
  def index
    @users = User.page(params[:page]).per(20)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def out
  end
end
