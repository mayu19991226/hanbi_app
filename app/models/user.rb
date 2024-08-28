class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # UserモデルのavatarカラムとアップローダーAvatarUploaderを紐付け
  mount_uploader :avatar, AvatarUploader
                # カラム名  # Uploader名
  # 1人のユーザーは複数の投稿が出来る。ユーザーが削除されたら関連付いた投稿も削除される
  has_many :posts, dependent: :destroy
  # Userモデルが複数のCommentレコードを持っているアソシエーションを追加。ユーザーが削除されたら関連付いたコメントも削除される
  has_many :comments, dependent: :destroy
  # ユーザーが削除されたら関連付いたブックマークも削除される
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarked_posts, through: :bookmarks, source: :post

  # 通知
  has_many :active_notifications, class_name: 'Notification', foreign_key: 'visiter_id', dependent: :destroy
  has_many :passive_notifications, class_name: 'Notification', foreign_key: 'visited_id', dependent: :destroy
  
    # 通知作成
  def create_notification_by(current_user)
    notification = current_user.active_notifications.new(
      post_id: id,
      visited_id: user_id,
      action: "comment"
    )

  if notification.visiter_id == notification.visited_id
    notification.is_checked = true
  end

    notification.save if notification.valid?
  end
end
