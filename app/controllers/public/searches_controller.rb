class Public::SearchesController < ApplicationController
  before_action :authenticate_user!, :except => [:incremental_search]

  def index
    @user = current_user
    @p = Post.ransack(params[:q])
    @results = @p.result.page(params[:page]).per(5).order(:updated_at => :desc)
    @results_all = @p.result
  end

  def search
    @p = Post.ransack(params[:q])
  end

  def incremental_search
    posts = Post.where('title LIKE(?)', "%#{params[:keyword]}%")
    @posts = posts.limit(7).order(:updated_at => :desc)

    respond_to do |format|
      format.html
      format.json
    end
  end
end
