Rails.application.routes.draw do
  resources :transactions
  resources :products
  resources :vending_machines
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
