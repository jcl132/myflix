Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  root to: 'pages#front'
  get 'register', to: 'users#new'
  get 'home', to: 'videos#index'
  get 'genre', to: 'categories#show'
  get 'sign_in', to: 'sessions#new'
  get 'sign_out', to: 'sessions#destroy'
  get 'my_queue', to: 'queue_items#index'

  resources :videos do
    collection do
      get 'search'
    end
    resources :reviews, only: [:create]
  end
  resources :users, only: [:create]
  resources :sessions, only: [:create]
  resources :categories, only: [:show]
  resources :queue_items, only: [:create, :destroy]
  post 'update_queue', to: 'queue_items#update_queue'
end
