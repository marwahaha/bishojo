Rails.application.routes.draw do
  root to: 'application#index'
  get 'terms', to: 'application#terms'
  get 'impressum', to: 'application#impressum'
  get 'privacy', to: 'application#privacy'
  get 'contact', to: 'application#contact'
  post 'contact', to: 'application#send_contact', as: 'send_contact'

  devise_for :users, path: "", controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }, path_names: { 
    sign_in: 'login', 
    sign_out: 'logout', 
    password: 'secret', 
    confirmation: 'verification', 
    unlock: 'unblock', 
    registration: 'register', 
    sign_up: '' 
  }
  
  get '/logout', to: 'users/sessions#destroy '
  
  get '/account', to: 'users#account'
  post '/account', to: 'users#update_account', as: 'update_account'
  get '/account/settings', to: 'users/registrations#edit'
  post '/account/settings', to: 'users/registrations#update', as: 'update_account_settings'
    
    
  resources :games
  
  resources :users, only: [:index, :show] do
    resources :games, only: [:index, :show]
  end
end
