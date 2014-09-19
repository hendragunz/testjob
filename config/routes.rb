Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    get "/" => "home#show"
    resources :users
  end

  namespace :buyer do
    get "/" => "home#show"
    resources :users
  end

  namespace :seller do
    get "/" => "home#show"
    resources :users
  end

  root to: 'home#show'
end
