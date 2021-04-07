Rails.application.routes.draw do

# 会員側
    devise_for :users, controllers: {
    registrations: "users/registrations",
    passwords: "users/passwords",
    sessions: "users/sessions",
  }

  scope module: :public do
    root to: "homes#top"

    get 'homes/top' => 'homes#top'
    get 'homes/about' => 'homes#about'
    get 'homes/explain' => 'homes#explain'

    # ↓間違っているかも。お気に入りした投稿一覧ルーティング
    get 'users/favorite' => 'users#favorite'
    get 'users/withdraw' => 'users#withdraw'
    patch 'users/out' => 'users#out'
    resources :users, only: [:show,:update,:edit]

    get 'posts/top' => 'posts#top'
    resources :posts do
      resource :favorites, only: [:create, :destroy]
    end
    # 新規投稿失敗時にURL(posts/new)にrenderさせるために無理やり再定義
    post 'posts/new', to: 'posts#create'

    resources :genres, only: [:index]

    get 'inquiries/get' => 'inquiries#get'
    post 'inquiries/create' => 'inquiries#create'
    get 'inquiries/thank' => 'inquiries#thank'

    resources :notifications, only: [:index]
    resources :messages, only: [:create]
    resources :rooms, only: [:create, :show]

    get 'searches/index' => 'searches#index'
    get 'searches/search' => 'searches#search'
  end


  devise_for :admins, controllers: {
    registrations: "admins/registrations",
    passwords: "admins/passwords",
    sessions: "admins/sessions",
  }

  namespace :private do
    resources :inquiries, only: [:index, :show]

    resources :genres, except: [:show]

    get 'searches/index' => 'searches#index'
    get 'searches/search' => 'searches#search'

    resources :posts, only: [:index, :show, :destroy]

    patch 'users/out' => 'users#out'
    resources :users, only: [:index, :show]
  end
end
