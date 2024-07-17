class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception # クロスサイトリクエストフォージェリ（CSRF）攻撃からアプリケーションを保護するための設定
  before_action :authenticate_user! # ログインしていないユーザーはアクセス不可
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar]) # サインアップ時に許可するパラメータ
  end
end
