class PostsController < ApplicationController
  # ユーザーがログインしているかを確認
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  # 指定されたアクションが実行される前に、該当する投稿 (@post) をデータベースから取得
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  # 現在ログインしているユーザーが投稿の所有者であるかどうかを確認
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  def index
    @posts = Post.order(created_at: :desc)
  end

  def my_posts
    @posts = current_user.posts.order(created_at: :desc)
    render :index  # indexビューを再利用する場合
  end

  def new
    @post = Post.new
    @area_categories = AreaCategory.all
  end

  def create
    @post = current_user.posts.new(post_params)
    @area_categories = AreaCategory.all
    if @post.save
      redirect_to @post, notice: '投稿しました'
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    # @post は before_action で設定されるので、ここでは必要ありません
    @area_categories = AreaCategory.all
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: '投稿を更新しました'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: '投稿を削除しました'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def authorize_user!
    redirect_to(root_path, alert: 'この投稿を編集する権限がありません。') unless @post.user == current_user
  end

  def post_params
    params.require(:post).permit(:title, :body, :area_category_id, :procedure_image, :post_category, :procedure_date, :satisfaction_rating)
  end
end
