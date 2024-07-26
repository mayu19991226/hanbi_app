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
end
