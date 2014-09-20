Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    get "/" => "home#show"
    root to: 'home#show'
  end

  namespace :buyer do
    get "/" => "home#show"
    root to: 'home#show'
  end

  namespace :seller do
    get "/" => "home#show"
    root to: 'home#show'
  end

  root to: 'home#show'
end
