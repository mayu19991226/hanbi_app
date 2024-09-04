class SearchController < ApplicationController
  def index
    @post_search = Post.ransack(title_or_body_cont: params[:search])
    @comment_search = Comment.ransack(body_cont: params[:search])
    @area_category_search = AreaCategory.ransack(title_cont: params[:search])

    @posts = @post_search.result(distinct: true)
    @comments = @comment_search.result(distinct: true)
    @area_categories = @area_category_search.result(distinct: true)
  end
end
