class UsersController < ApplicationController
  # ユーザーが認証されているか
  before_action :authenticate_user!
  # アクションが実行される前にset_userメソッドを呼び出す
  before_action :set_user, only: [:show, :edit, :update, :remove_avatar]
  # アクションが実行される前にcorrect_userメソッドを呼び出す
  before_action :correct_user, only: [:edit, :update, :remove_avatar]

  def show
    # @user = User.find(params[:id]) これは before_action :set_user で設定されるので削除可能
    @user
  end

  # 特に何もしてないがビューに@userを渡す
  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'プロフィールを更新しました'
    else
      render :edit
    end
  end

  def remove_avatar
    @user.avatar.remove!  # CarrierWaveでアタッチメントを削除
    @user.save # 必要に応じてモデルを保存して変更を反映
    redirect_to edit_user_path(@user), notice: 'プロフィール画像を削除しました'
  end

  private

  # ユーザーを検索し、@userにセット
  def set_user
    @user = User.find(params[:id])
  end

  # 現在のユーザーが編集対象のユーザーと同じかどうかを確認
  def correct_user
    redirect_to(root_url) unless current_user == @user
  end

  def user_params
    params.require(:user).permit(:name, :email, :avatar)
  end
end
