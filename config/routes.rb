Rails.application.routes.draw do
  namespace :api do
    get '/all_products' => 'products#all_products'
    get '/product_1' => 'products#product_1'
    get '/product_2' => 'products#product_2'
    get '/product_3' => 'products#product_3'
    get '/product_4' => 'products#product_4'
    get '/product_5' => 'products#product_5'
    get '/product_6' => 'products#product_6'
    get '/product_7' => 'products#product_7'
  end
end