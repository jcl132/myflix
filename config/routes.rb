Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  root to: 'videos#index'
  get '/home', to: 'videos#index'
  get '/genre', to: 'categories#show'
  resources :videos do
    collection do
      get 'search'
    end
  end
end
