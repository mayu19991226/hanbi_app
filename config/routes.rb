Rails.application.routes.draw do
  get 'bookmarks/create'
  get 'bookmarks/index'
  get 'bookmarks/destroy'
  devise_for :users

  # ユーザーのプロフィールページのルーティング
  resources :users, only: [:show, :edit, :update] do
    member do
      delete 'remove_avatar'  # 画像削除用のアクション
    end
  end
  
  # エリアカテゴリのルーティング
  resources :area_categories, only: [:show]

  # 投稿のルーティング(7つ全て) postsリソースの中でネストされたcommentsリソースを設定
  resources :posts do
    resources :comments, only: [:create, :destroy, :edit, :update]
    resources :bookmarks, only: [:create, :destroy]
  end
  # ブックマーク一覧は特定の投稿に紐付くものではないためpostsにネストは不要
  resources :bookmarks, only: [:index]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#top"

  # letter_openerのルート設定
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
