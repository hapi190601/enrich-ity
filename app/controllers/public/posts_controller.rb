class Public::PostsController < ApplicationController
  before_action :calculate_current_user_age

  def top
    from  = (Time.current - 6.day).at_beginning_of_day
    to    = Time.current.at_end_of_day
    @weekly_posts = Post.where(updated_at: from...to)
    @posts_all = Post.all
  end

  def new
    @post = Post.new
  end

  def index
    @posts = Post.page(params[:page]).per(5).order(updated_at: :desc)
    @posts_all = Post.all
    @my_posts= Post.where(user_id: current_user.id)
    @other_posts= Post.where.not(user_id: current_user.id)
  end

  def create
    @post = Post.new(post_params)
    @post.age = @age
    @post.user_id = current_user.id

    if params[:post][:option] == "0"
      @post.desired_area = (current_user.prefecture_name + current_user.municipality)
    elsif params[:post][:option] == "1"
      @post.desired_area = "#{current_user.nearest_station}駅"
    elsif params[:post][:option] == "2"
      if  params[:post][:desired_area].empty?
        flash[:notice] = "希望エリア未入力です！"
        render :new
      end
    end

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

    if params[:post][:option] == "0"
      @post.desired_area = (current_user.prefecture_name + current_user.municipality)
    elsif params[:post][:option] == "1"
      @post.desired_area = "#{current_user.nearest_station}駅"
    elsif params[:post][:option] == "2"
      if  params[:post][:desired_area].empty?
        flash[:notice] = "希望エリア未入力です！"
        render :edit and return
      end
      @post.desired_area = params[:post][:desired_area]
    end

    if @post.save
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
    params.require(:post).permit(:genre_id, :title, :content, :age, :gender, :image, :desired_area)
  end

  def calculate_current_user_age
    today = Date.today.strftime("%Y%m%d").to_i
    birthday = current_user.birthday.strftime("%Y%m%d").to_i
    @age = (today - birthday) / 10000
  end
end
