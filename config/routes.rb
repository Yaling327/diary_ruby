Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :diary_rubies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#index'
  get '/users/new'
end
