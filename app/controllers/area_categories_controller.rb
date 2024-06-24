class AreaCategoriesController < ApplicationController
  def show
    @area_category = AreaCategory.find(params[:id])
  end
end
