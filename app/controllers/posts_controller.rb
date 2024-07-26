class PostsController < ApplicationController
  def index
    # 投稿順(最新順)にデータを表示させる
    @posts = Post.order(created_at: :desc)
  end

  def new
    # 新しいPostインスタンスを作成
    @post = Post.new
    @area_categories = AreaCategory.all
  end

  def create
    @post = Post.new(post_params)
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
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, notice: '投稿を更新しました'
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url, notice: '投稿を削除しました'
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :area_category_id, :procedure_image, :post_category, :procedure_date, :satisfaction_rating)
  end
end
