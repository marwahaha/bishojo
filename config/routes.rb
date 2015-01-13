Rails.application.routes.draw do
  get 'games/index'

  get 'games/show'

  devise_for :users
  
  get 'terms', to: 'application#terms'
  get 'impressum', to: 'application#impressum'
  get 'privacy', to: 'application#privacy'
  get 'contact', to: 'application#contact'
  root to: 'application#index'
end
