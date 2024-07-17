class StaticPagesController < ApplicationController
  # StaticPagesControllerのtopアクションはログイン不要
  skip_before_action :authenticate_user!, only: [:top]
  # トップページのアクション
  def top
    @area_categories = AreaCategory.all
  end
end
