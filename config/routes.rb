Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  # Defines the root path route ("/")
  # root "articles#index"
end
