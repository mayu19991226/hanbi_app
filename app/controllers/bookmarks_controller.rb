class BookmarksController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookmarked_posts = current_user.bookmarked_posts
  end

  def create
    post = Post.find(params[:post_id])
    current_user.bookmarks.find_or_create_by(post: post)
    redirect_to request.referer || posts_path, notice: 'ブックマークしました'
  end

  def destroy
    post = Post.find(params[:post_id])
    bookmark = current_user.bookmarks.find_by(post: post)
    
    if bookmark
      bookmark.destroy
      redirect_to request.referer || posts_path, notice: 'ブックマークを取り消しました'
    else
      redirect_to request.referer || posts_path, alert: 'ブックマークが見つかりませんでした'
    end
  end
end
