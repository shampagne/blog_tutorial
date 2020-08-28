Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  resources :tags
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
end