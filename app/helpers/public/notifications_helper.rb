module Public::NotificationsHelper
  def unchecked_notifications
    if current_user
      current_user.passive_notifications.where(is_checked: false)
    else
      []  # ユーザーがログインしていない場合は空の配列を返す
    end
  end
end
