Rails.application.routes.draw do

# 会員側
    devise_for :users, controllers: {
    registrations: "users/registrations",
    passwords: "users/passwords",
    sessions: "users/sessions",
  }

  scope module: :public do
    root to: "posts#top"

    get 'homes/top' => 'homes#top'
    get 'homes/about' => 'homes#about'
    get 'homes/explain' => 'homes#explain'

    resources :users, only: [:show,:update,:edit]
    # ↓間違っているかも。お気に入りした投稿一覧ルーティング
    get 'users/favorite' => 'users#favorite'
    get 'users/withdraw' => 'users#withdraw'
    patch 'users/out' => 'users#out'

    resources :posts do
      resource :favorites, only: [:create, :destroy]
    end
    get 'posts/top' => 'posts#top'

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

    resources :users, only: [:index, :show]
    patch 'users/out' => 'users#out'
  end
end
