class Public::SearchesController < ApplicationController

  def index
    @user = current_user
    @p = Post.ransack(params[:q])
    @results = @p.result.page(params[:page]).per(5)
    @results_all = @p.result
  end

  def search
    @p = Post.ransack(params[:q])
  end
end
