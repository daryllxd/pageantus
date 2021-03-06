Pageantus::Application.routes.draw do
  devise_for :users

  root :to => 'home#index'

  get '/home' => 'pages#show', as: :landing, id: 'landing'

  get 'pages/home' => 'high_voltage/pages#show', id: 'home'

  get 'activate' => 'pageants#activate', as: :pageant_activation


  resource :profile, controller: 'profile', only: :show
  resources :users
  resources :pageants, only: [:new, :create]
end
