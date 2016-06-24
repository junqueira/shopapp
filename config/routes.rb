Rails.application.routes.draw do
  root to: "products#index"

  resources :coupons, only: [:edit, :index, :create, :update, :new, :destroy]
  resources :products, only: [:edit, :index, :create, :update, :new]
  resource :cart, only: [:show]
  resource :checkout, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
end
