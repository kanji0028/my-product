Rails.application.routes.draw do

  devise_for :users
  root  'posts#index'

  resources :users, only: [:show, :index] 
  resources :posts, except: [:show] do
     resources :likes, only: [:create, :destroy]
  end

end
