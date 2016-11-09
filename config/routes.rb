Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'movies/search', :to => 'movies#search'

  root "welcome#index"

  # get '/login', to: 'login'
  # get '/logout', to: 'logout'
  # get '/register', to: 'register'


  resources :admin, only: [:index]
  resources :movies, only: [:index, :show]
  resources :users, except: [:index, :destroy, :show]

  resource :profile, except: [:new, :create, :destroy]

  scope 'admin' do
    resources :movies
    resources :users, only: [:index, :show, :destroy]
  end

end
