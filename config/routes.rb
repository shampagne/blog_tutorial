# config/routes.rb

Rails.application.routes.draw do
  root 'posts#index'
  # 以下修正
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
  resources :tags
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  get '/users', to: 'users#index'
end
