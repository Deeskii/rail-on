Rails.application.routes.draw do
  get 'welcome/index'
  get '/users', to: 'users#index'
  get '/home/about'
  get 'projects', to: 'projects#index'
  root 'home#index'
end
