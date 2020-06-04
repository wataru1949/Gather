Rails.application.routes.draw do

  devise_for :users
  root 'posts#index'
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  resources :groups, only: [:new, :create, :show, :edit, :update] do
    resources :chats, only: [:create, :destroy]
  end

end
