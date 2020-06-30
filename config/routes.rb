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
    get :search, on: :collection
    resource :favorites, only: [:create, :destroy]
  end
  root 'homes#top'
  post '/users/guest_new', to: 'users#new_guest'
  post '/users/admin_new', to: 'users#new_admin'
end
