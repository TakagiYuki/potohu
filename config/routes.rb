Rails.application.routes.draw do
  get 'events/new'
  get 'areas/new'
  resources :users
  resources :sessions
  resources :areas
  resources :events
  root 'homes#top'
end
