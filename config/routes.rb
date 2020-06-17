Rails.application.routes.draw do
  get 'areas/new'
  resources :users
  resources :sessions
  resources :areas
  root 'homes#top'
end
