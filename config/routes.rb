Rails.application.routes.draw do
  get 'tags/show'
  namespace :admin do
    resources :areas
    resources :events
    resources :tags
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
  get 'events/tag/:id', to: 'tags#show',as: "event_tag"
  get 'users/:id/favorite', to: 'users#favorite', as:"user_favorites"
  post '/users/guest_new', to: 'users#new_guest'
  post '/users/admin_new', to: 'users#new_admin'
end
