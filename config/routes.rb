Rails.application.routes.draw do
  devise_for :users

  # ユーザーのプロフィールページのルーティング
  resources :users, only: [:show, :edit, :update] do
    member do
      delete 'remove_avatar'  # 画像削除用のアクション
    end
  end
  
  # エリアカテゴリのルーティング
  resources :area_categories, only: [:show]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#top"
end
