class CommentsController < ApplicationController
  # ユーザーがログインしているかを確認
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @post, notice: 'コメントが投稿されました。'
    else
      redirect_to @post, alert: 'コメントの投稿に失敗しました。'
    end
  end

  def show
    @post = Post.includes(:comments).find(params[:id])
    @comments = @post.comments.order(created_at: :desc) # コメントを最新順に並べる
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
