class Public::NotificationsController < ApplicationController
  def index
    @notifications = current_user.passive_notifications.page(params[:page]).per(20)
    @notifications.where(is_checked: false).update_all(is_checked: true)
    render template: 'public/notifications/index' # 明示的にテンプレートを指定
  end  

  def destroy
    @notifications = current_user.passive_notifications.destroy_all
    redirect_to public_notifications_path
  end  
end
