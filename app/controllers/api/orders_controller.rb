class Api::OrdersController < ApplicationController
  
  def create
    @order = Order.new(
                        user_id: current_user.id,
                        product_id: params[:product_id],
                        quantity: params[:quantity]
                      )

    @order.calculate_totals

    @order.save
    render 'show.json.jbuilder'
  end

  def show
    order_id = params[:id]
    @order = Order.find(order_id)
    render 'show.json.jbuilder'
  end
end
