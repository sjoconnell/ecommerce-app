class OrdersController < ApplicationController
  before_action :authenticate_user!

def index
end

def show
  @order = Order.find_by(id: params[:id])
end

def new
end

def create
  @order = Order.create(user_id: current_user.id)

  @cartedproduct = CartedProduct.where(user_id: current_user.id, status: "carted")

  @cartedproduct.each do |cartedproduct|
    cartedproduct.update(status: "purchased", order_id: @order.id)
  end

  subtotal = 0

  @order.carted_products.each do |carteditem|
    totalpriceofitem = carteditem.product.price * carteditem.quantity
    subtotal = subtotal + totalpriceofitem
  end

  tax = subtotal * 0.09
  total = subtotal + tax
 

  @order.update(subtotal: subtotal , tax: tax , total: total )

  redirect_to "/orders/#{@order.id}"

end


end
