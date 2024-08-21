class CommentsController < ApplicationController
  # ユーザーがログインしているかを確認
  before_action :authenticate_user!, only: [:create, :destroy, :edit, :update]
  before_action :set_comment, only: [:edit, :update, :destroy]

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

  def edit
    # 編集用のビューを表示するためのアクション
  end

  def update
    if @comment.update(comment_params)
      redirect_to @comment.post, notice: 'コメントが更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to @comment.post, notice: 'コメントが削除されました。'
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
