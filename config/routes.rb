Rails.application.routes.draw do

  devise_for :users
  root 'posts#index'
  get  'posts'     => 'posts#index'
  get  'posts/new' => 'posts#new'  #新規投稿
end
