Rails.application.routes.draw do
  namespace :private do
    get 'inquiries/index'
    get 'inquiries/show'
  end
  namespace :private do
    get 'genres/index'
    get 'genres/create'
    get 'genres/edit'
    get 'genres/update'
    get 'genres/destroy'
  end
  namespace :private do
    get 'searches/index'
    get 'searches/search'
  end
  namespace :private do
    get 'posts/index'
    get 'posts/show'
    get 'posts/destroy'
  end
  namespace :private do
    get 'users/index'
    get 'users/show'
    get 'users/out'
  end
  namespace :public do
    get 'inquiries/get'
    get 'inquiries/create'
    get 'inquiries/thank'
  end
  namespace :public do
    get 'notifications/index'
  end
  namespace :public do
    get 'messages/create'
  end
  namespace :public do
    get 'rooms/create'
    get 'rooms/show'
  end
  namespace :public do
    get 'searches/index'
    get 'searches/search'
  end
  namespace :public do
    get 'favorites/create'
    get 'favorites/destroy'
  end
  namespace :public do
    get 'genres/index'
  end
  namespace :public do
    get 'posts/top'
    get 'posts/new'
    get 'posts/index'
    get 'posts/create'
    get 'posts/show'
    get 'posts/edit'
    get 'posts/update'
    get 'posts/destroy'
  end
  namespace :public do
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/destroy'
    get 'users/favorite'
    get 'users/out'
    get 'users/withdraw'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
    get 'homes/explain'
  end
    devise_for :users, controllers: {
    registrations: "users/registrations",
    passwords: "users/passwords",
    sessions: "users/sessions",
  }

  scope module: :public do
  end
  
  
  devise_for :admins, controllers: {
    registrations: "admins/registrations",
    passwords: "admins/passwords",
    sessions: "admins/sessions",
  }
  
  namespace :private do
  end
  
end
