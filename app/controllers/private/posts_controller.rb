class Private::PostsController < ApplicationController
  before_action :authenticate_admin!
  
  def destroy
    post = Post.find(params[:id])
    post.destroy
    flash[:notice] = "投稿を削除しました。"
    redirect_to user_path(current_user.id)
  end
end
