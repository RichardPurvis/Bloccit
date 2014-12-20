Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show, :index, :update]

  resources :topics do
    resources :posts, except: [:index] do
      resources :comments, only: [:create, :destroy]
    end
  end

  resources :posts, only: [:index]

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
