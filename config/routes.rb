Rails.application.routes.draw do
  get 'welcome/index'

  root "welcome#index"

  get 'movies/search/:keyword', to: 'movies#search'

  # get '/login', to: 'login'
  # get '/logout', to: 'logout'
  # get '/register', to: 'register'


  resources :admin, only: [:index]
  resources :movies, only: [:index, :show]
  resources :users, except: [:destroy]

  scope 'admin' do
    resources :movies
    resources :users, only: [:index, :show, :destroy]
  end

end
