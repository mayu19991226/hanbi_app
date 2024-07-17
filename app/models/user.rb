class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # UserモデルのavatarカラムとアップローダーAvatarUploaderを紐付け
  mount_uploader :avatar, AvatarUploader
                # カラム名  # Uploader名
end
