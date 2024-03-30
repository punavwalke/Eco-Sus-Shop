Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'gallery/index'
  get 'gallery/search'
  post 'gallery/search'
  get 'gallery/checkout'
  resources :stores
  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'
  devise_for :users
  get 'welcome/index'
  post 'gallery/checkout'
  get 'gallery/purchase_complete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "welcome#index"
end
