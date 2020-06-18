Rails.application.routes.draw do
  namespace :admin do
    resources :areas
    resources :events
  end
  resources :users
  resources :sessions
  resources :areas
  resources :events
  root 'homes#top'
end
