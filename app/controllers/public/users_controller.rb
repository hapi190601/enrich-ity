class Public::UsersController < ApplicationController
  before_action :calculate_user_age, except: [:favorites, :withdraw]
  before_action :check_guest, only: :withdraw

  def show
    @user = User.find(params[:id])

    @posts = @user.posts
    favorites = Favorite.where(user_id: current_user.id).pluck(:post_id)
    @favorites_index = Post.find(favorites)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "プロフィールを編集しました！"
      redirect_to user_path(@user.id)
    else
      flash[:notice] = "編集できませんでした！"
      render :edit
    end
  end

  def out
  end

  def withdraw
    @user = current_user
    @user.update(is_deleted: true)
    reset_session
    flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
    redirect_to root_path
  end

  def favorites
    @posts = current_user.posts
    favorites = Favorite.where(user_id: current_user.id).pluck(:post_id)
    @favorites_index = Post.find(favorites)
  end

  private

  def user_params
    params.require(:user).permit(:image, :name, :name_kana, :nickname, :gender, :birthday, :postal_code, :prefecture_code, :municipality, :nearest_station)
  end

  def calculate_user_age
    user = User.find(params[:id])
    today = Date.today.strftime("%Y%m%d").to_i
    birthday = user.birthday.strftime("%Y%m%d").to_i
    @age = (today - birthday) / 10000
  end

  def check_guest
    if current_user.email == "guest@guest.com"
      redirect_to posts_top_path
      flash[:notice] = "ゲストユーザーは削除できません。"
    end
  end
end
