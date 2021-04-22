class Public::PostsController < ApplicationController
  before_action :calculate_current_user_age, :only => [:create, :update]
  before_action :authenticate_user!, :only => [:top, :create, :update, :edit, :destroy]

  impressionist :actions=> [:show]

  def top
    @posts_all = Post.all

    from  = (Time.current - 6.day).at_beginning_of_day
    to    = Time.current.at_end_of_day
    @weekly_posts = Post.where(:updated_at => from...to)

    # ランキング機能+ジャンル毎の投稿数
    @genre_ranks = Genre.find(Post.group(:genre_id).order('count(genre_id) desc').limit(3).pluck(:genre_id))

    three_hash = Post.group(:genre_id).order('count(genre_id) desc').limit(3).count
    @three_key = three_hash.values
    @three_index = [1, 2, 3]
  end

  def new
    @post = Post.new
  end

  def index
    @posts = Post.page(params[:page]).per(5).order(:updated_at => :desc)

    respond_to do |format|
      format.html
      format.js
    end

    # 使い道ないかも
    # @posts_all = Post.all
    # @my_posts= Post.where(user_id: current_user.id)
    # @other_posts= Post.where.not(user_id: current_user.id)
  end

  def create
    @post = Post.new(post_params)
    @post.age = @age
    @post.user_id = current_user.id

    # ラジオボタン条件分岐
    # 0のときはprefecture_codeもmunicipalityもそのまま＝nil
    if params[:post][:option] == "0"

    elsif params[:post][:option] == "1"
      @post.prefecture_code = current_user.prefecture_code
      @post.municipality = current_user.municipality
    elsif params[:post][:option] == "2"
      if  params[:post][:municipality].empty? or params[:post][:prefecture_code] == "----"
        flash[:notice] = "希望エリア未入力です！"
        render :new and return
      end
      @post.prefecture_code = params[:post][:prefecture_code]
      @post.municipality = params[:post][:municipality]
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

    # 掲載期限表示用
    @deadline =@post.updated_at.months_since(1)
    dead_line =@post.updated_at.months_since(1).to_date
    today = Date.today
    @remain = (dead_line - today).to_i

    # view数表示用
    impressionist(@post, nil)

    # チャット機能用
    if user_signed_in?
      @user = User.find(@post.user_id)
      @currentUserEntry = Entry.where(:user_id => current_user.id)
      @userEntry = Entry.where(:user_id => @user.id)

      unless @user.id == current_user.id
        @currentUserEntry.each do |cu|
          @userEntry.each do |u|
            if cu.room_id == u.room_id then
              @isRoom = true
              @roomId = cu.room_id
            end
          end
        end
        unless @isRoom
          @room = Room.new
          @entry = Entry.new
        end
      end
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    # 希望のエリア条件分岐
    if params[:post][:option] == "0"
      # 0のときはprefecture_codeもmunicipalityもそのまま＝なにも処理しない
    elsif params[:post][:option] == "1"
      @post.prefecture_code = current_user.prefecture_code
      @post.municipality = current_user.municipality
    elsif params[:post][:option] == "2"
      if  params[:post][:municipality].empty?
        flash[:notice] = "希望エリア未入力です！"
        render :edit and return
      end
      @post.prefecture_code = params[:post][:prefecture_code]
      @post.municipality = params[:post][:municipality]
    elsif params[:post][:option] == "3"
      @post.prefecture_code = nil
      @post.municipality = ""
    end

    if @post.update(
        :genre_id => params[:post][:genre_id],
        :title => params[:post][:title],
        :content => params[:post][:content],
        :age => @post.age,
        :gender => params[:post][:gender],
        :image => params[:post][:image],
    )
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

  private
  
  def post_params
    params.require(:post).permit(:genre_id, :title, :content, :age, :gender, :image, :prefecture_code, :municipality)
  end

  def calculate_current_user_age
    today = Date.today.strftime("%Y%m%d").to_i
    birthday = current_user.birthday.strftime("%Y%m%d").to_i
    @age = (today - birthday) / 10000
  end
end