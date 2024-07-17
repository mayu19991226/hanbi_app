Rails.application.routes.draw do
  devise_for :users

  # ユーザーのプロフィールページのルーティング
  resources :users, only: [:show]
  
  # エリアカテゴリのルーティング
  resources :area_categories, only: [:show]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#top"
end
