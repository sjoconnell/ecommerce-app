Rails.application.routes.draw do

  devise_for :users
root "products#index"

get "/products" => 'products#index'
get "/products/new" => 'products#new'
get "/products/:id" => 'products#show'
post "/products" => 'products#create'
get "/products/:id/edit" => 'products#edit'
patch "/products/:id" => 'products#update'
delete "/products/:id" => 'products#destroy'
post "/search" => 'products#search'

get "/orders" => 'orders#index'
get "/orders/new" => 'orders#new'
get "/orders/:id" => 'orders#show'
post "/orders" => 'orders#create'

get "/carted_products" => 'carted_products#index'
post "/carted_products" => 'carted_products#create'

end