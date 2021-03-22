Rails.application.routes.draw do
  resources :peeps
  get 'welcome/index'
  get '/users', to: 'users#index'
  get '/home/about'
  get 'projects', to: 'projects#index'
  root 'home#index'
end
