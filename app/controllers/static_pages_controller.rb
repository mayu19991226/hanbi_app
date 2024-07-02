class StaticPagesController < ApplicationController
  # トップページのアクション
  def top
    @area_categories = AreaCategory.all
  end
end
