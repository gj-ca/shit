Rails.application.routes.draw do
  resources :users

  get "/categories/new", to: "categories#new"
  post "/categories", to: "categories#create"
  get "/categories", to: "categories#index"
  get "/items/new", to: "items#new"
  post "/items", to: "items#create"
  get "items", to: "items#index"
  get "items/:id/order", to: "charges#new", as: "new_charge"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
