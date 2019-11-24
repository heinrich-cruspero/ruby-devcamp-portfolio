Rails.application.routes.draw do
  devise_for :users
  # :variable means `url` also means symbolvariable while variable: means dict
  # customize resources
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'show_portfolio'

  resources :blogs do
    member do
      get :toggle_status, as: 'toggle_status'
    end
  end

  # Static Page == get `/url/` to views (app#suffix)
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # configure to homepage
  root to: 'pages#home'
end
