class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render 'all_products.json.jbuilder'
  end

  def product_1
    @product = Product.find(1)
    render 'first_product_view.json.jbuilder'
  end

  def product_2
    @product = Product.find(2)
    render 'second_product_view.json.jbuilder'
  end

  def product_3
    @product = Product.find(3)
    render 'product_3_view.json.jbuilder'
  end

  def product_4
    @product = Product.find(4)
    render 'product_4_view.json.jbuilder'
  end

  def product_5
    @product = Product.find(5)
    render 'product_5_view.json.jbuilder'
  end

  def product_6
    @product = Product.find(6)
    render 'product_6_view.json.jbuilder'
  end

  def product_7
    @product = Product.find(7)
    render 'product_7_view.json.jbuilder'
  end

end
