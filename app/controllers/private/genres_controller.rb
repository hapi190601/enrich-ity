class Private::GenresController < ApplicationController
  before_action :authenticate_admin!

  def new
    @genre = Genre.new
  end

  def index
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      flash[:notice] = "作成完了！"
      redirect_to private_genres_path
    else
      flash[:notice] = "未入力です。"
      render :new
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      flash[:notice] = "編集完了！"
      redirect_to private_genres_path
    else
      flash[:notice] = "未入力です。"
      render :edit
    end
  end

  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    flash[:notice] = "ジャンルを削除しました！"
    redirect_to private_genres_path
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
