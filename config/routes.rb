Rails.application.routes.draw do	
  get 'stocks/create'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post 'stocks/create'
  delete '/logout', to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers, :pantry
    end
  end 
  resources :microposts,      only: [:create, :destroy]
  resources :relationships,   only: [:create, :destroy]
  resources :stocks,          only: [:create, :destroy]
  resources :ingredients

end