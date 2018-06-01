class Api::CartedProductsController < ApplicationController

  def index
    @carted_products = CartedProduct.where(user_id: current_user)
    CartedProduct.where(status: "carted")
    render 'index.json.jbuilder'
  end

  def create
    @carted_product = CartedProduct.new(
                                        user_id: current_user.id,
                                        product_id: params[:product_id],
                                        quantity: params[:quantity],
                                        status: "carted"
                                        )
    @carted_product.save
    render 'show.json.jbuilder'
  end

  def show
    carted_product_id = params[:id]
    @carted_product = CartedOrder.find(carted_product_id)
    render 'show.json.jbuilder'
  end
end
