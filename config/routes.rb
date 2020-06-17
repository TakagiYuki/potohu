Rails.application.routes.draw do
  resources :users
  resources :sessions
  root 'homes#top'
end
