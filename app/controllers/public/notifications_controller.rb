class Public::NotificationsController < ApplicationController
  def index
    @notifications = Notification.where(visited_id: current_user.id).order(created_at: :desc)
  end

  def destroy
    @notification = Notification.find(params[:id])
    @notification.destroy
    redirect_to notifications_path, notice: 'Notification was successfully deleted.'
  end

  def bulk_delete
    if params[:notification_ids]
      Notification.where(id: params[:notification_ids]).destroy_all
      flash[:notice] = 'Selected notifications were successfully deleted.'
    else
      flash[:alert] = 'No notifications were selected for deletion.'
    end
    redirect_to public_notifications_path
  end
end
