Rails.application.routes.draw do
  get '/', to: 'users#index'

  get  '/signup',  to: 'users#new', as: 'signup'
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'

end
