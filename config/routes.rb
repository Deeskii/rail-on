Rails.application.routes.draw do
  get 'welcome/index'
  get '/users', to: 'users#index'

  root 'welcome#index'
end
