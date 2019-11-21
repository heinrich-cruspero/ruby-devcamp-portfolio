Rails.application.routes.draw do
  # customize resources
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'show_portfolio'

  resources :blogs

  # Static Page == get `/url/` to views (app#suffix)
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # configure to homepage
  root to: 'pages#home'
end
