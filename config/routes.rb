Rails.application.routes.draw do
  get 'welcome/index'
  get '/users', to: 'users#index'
  get '/home/about'
  root 'home#index'
end
