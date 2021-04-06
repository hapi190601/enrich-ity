class Public::PostsController < ApplicationController
  before_action :calculate_current_user_age

  def top
  end

  def new
    @post = Post.new
  end

  def index
  end

  def create
    @post = Post.new(post_params)
    @post.age = @age
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = "投稿しました！"
      redirect_to post_path(@post.id)
    else
      flash[:notice] = "投稿に必要な情報が足りません"
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "投稿内容を編集しました！"
      redirect_to post_path(@post.id)
    else
      flash[:notice] = "編集できませんでした"
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    flash[:notice] = "投稿を削除しました。"
    redirect_to user_path(current_user.id)
  end

  def post_params
    params.require(:post).permit(:title, :content, :image, :gender, :genre_id, :age, :prefecture_code, :municipality)
  end

  def calculate_current_user_age
    today = Date.today.strftime("%Y%m%d").to_i
    birthday = current_user.birthday.strftime("%Y%m%d").to_i
    @age = (today - birthday) / 10000
  end
end
