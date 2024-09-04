class Post < ApplicationRecord
  belongs_to :user
  belongs_to :area_category
  # Postモデルがcommentモデルに属していることを示すアソシエーションを追加。ユーザーが削除されたら関連付いたコメントも削除される
  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  validates :title, presence: true, length: { maximum: 50 } # エラーメッセージを表示させるためにはビューで表示する必要があることを忘れないように
  validates :body, presence: true, length: { maximum: 65000 }
  validates :post_category, presence: true
  validates :procedure_date, presence: true
  validates :satisfaction_rating, presence: true

  # postモデルとuploaderを紐付け
  mount_uploader :procedure_image, PostImageUploader

  def create_notification_by(current_user)
    notification = Notification.new(
      visited_id: self.user_id,  # 通知を受け取るユーザー（postの所有者）
      visiter_id: current_user.id,  # 通知を送るユーザー（コメントを投稿したユーザー）
      post_id: self.id,
      action: 'comment'
    )
    notification.save if notification.valid?
  end

  # ransack
  def self.ransackable_attributes(auth_object = nil)
    %w[title body]
  end

  # Ransackが検索可能な関連付けを指定
  def self.ransackable_associations(auth_object = nil)
    %w[comments area_categories] # ここに関連付けの名前を追加
  end
end
