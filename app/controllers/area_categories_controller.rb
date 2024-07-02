class AreaCategoriesController < ApplicationController
  def show
    @area_category = AreaCategory.find(params[:id])
    @area_categories = AreaCategory.all
  end
end
