class SearchController < ApplicationController
  def index
    # 各モデルに対する検索クエリを生成
    post_search = Post.ransack(title_or_body_cont: params[:search])
    comment_search = Comment.ransack(body_cont: params[:search])
    
    # 検索結果を取得
    @posts = post_search.result(distinct: true).includes(:user)
    @comments = comment_search.result(distinct: true).includes(:user)
  end
end
