Pageantus::Application.routes.draw do
  devise_for :users

  root :to => 'home#index'
  resource :profile, controller: 'profile', only: :show

  get "/landing", to: 'pages#index', as: 'landing'
  get "/faq", to: 'pages#faq', as: 'faq'
  get "/about", to: 'pages#about', as: 'about'

  resources :users
end
