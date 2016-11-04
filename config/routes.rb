Rails.application.routes.draw do
  root "home#index"

  get '/login', to: 'login'
  get '/logout', to: 'logout'
  get '/register', to: 'register'
  get '/movies', to: 'movies'


  resources :admin
  resources :movies
  resources :users

  scope 'admin' do
    resources :movies
    resources :users
  end

end
