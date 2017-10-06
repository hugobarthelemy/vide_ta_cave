Rails.application.routes.draw do
  get 'products/index'
  resources :products, only: [ :index, :new, :create ]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
