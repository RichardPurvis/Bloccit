Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show, :index, :update]

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [:index] do
    resources :comments
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
