Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [:index, :show]
  root 'products#index'

  resources :reviews, only: [:new, :create, :destroy, :edit, :update]
  resources :admins, only: [:index, :new]
  resources :images, only: [:index, :new, :create]

  resources :products do    
    collection do
      post 'purchase'
    end

  end
end
