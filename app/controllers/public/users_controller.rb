class Public::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    today = Date.today.strftime("%Y%m%d").to_i
    birthday = @user.birthday.strftime("%Y%m%d").to_i
    @age = (today - birthday) / 10000
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

  def favorite
  end

  def out
    
  end

  def withdraw
  end

  private

  def user_params
    params.require(:user).permit(:image, :name, :name_kana, :nickname, :gender, :birthday, :postal_code, :prefecture_code, :municipality, :nearest_station)
  end

end
