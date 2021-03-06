Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  root to: 'pages#front'
  get 'register', to: 'users#new'
  get 'home', to: 'videos#index'
  get 'genre', to: 'categories#show'
  get 'sign_in', to: 'sessions#new'
  get 'sign_out', to: 'sessions#destroy'
  resources :videos do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:create]
  resources :sessions, only: [:create]
end
