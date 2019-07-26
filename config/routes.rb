Rails.application.routes.draw do

  devise_for :users
  root  'posts#index'
  get   'posts'     => 'posts#index'
  get   'posts/new' => 'posts#new'     #新規入力画面
  post  'posts'     => 'posts#create'  #新規入力機能
end
