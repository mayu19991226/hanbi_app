class AreaCategoriesController < ApplicationController
  # AreaCategoriesControllerのshowアクションはログイン不要
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @area_category = AreaCategory.find(params[:id])
    @area_categories = AreaCategory.all
    @posts = @area_category.posts.order(created_at: :desc).page(params[:page]).per(6)
  end
end
