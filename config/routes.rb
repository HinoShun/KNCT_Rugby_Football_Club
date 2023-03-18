Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"
  resources :articles do
    resources :comments,  only: [:new, :create, :destroy]
  end
  get 'pages/articles'
  get 'pages/result'
  get 'pages/member'
  get 'pages/news_letter'
  resources :contacts,    only: [:new, :create] 
  resources :orders,      only: [:index, :create]
end
