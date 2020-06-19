Rails.application.routes.draw do
  namespace :admin do
    resources :areas
    resources :events
  end
  resources :users
  resources :sessions
  resources :areas
  resources :events do
    resources :event_comments, only: [:create, :destroy]
  end
  root 'homes#top'
end
