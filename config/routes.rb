Pageantus::Application.routes.draw do
  devise_for :users
  root :to => 'pages#index'
  get "/faq", to: 'pages#faq', as: 'faq'
  get "/about", to: 'pages#about', as: 'about'

  resources :users
end
