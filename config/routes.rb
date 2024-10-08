Rails.application.routes.draw do
  get 'search/index'
  get 'bookmarks/create'
  get 'bookmarks/index'
  get 'bookmarks/destroy'
  # オートコンプリート用のルート
  get 'search_autocomplete', to: 'search_autocomplete#index'
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
    collection do
      get 'my_posts', to: 'posts#my_posts'  # ログイン中ユーザーの投稿一覧
    end
    resources :comments, only: [:create, :destroy, :edit, :update]
    resources :bookmarks, only: [:create, :destroy]
  end
  # ブックマーク一覧は特定の投稿に紐付くものではないためpostsにネストは不要
  resources :bookmarks, only: [:index]

  # 通知のルーティング
  namespace :public do
    resources :notifications do
      collection do
        delete :bulk_delete
      end
    end
  end 
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#top"

  # letter_openerのルート設定
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
