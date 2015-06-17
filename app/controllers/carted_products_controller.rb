class CartedProductsController < ApplicationController

  def create
    CartedProduct.create(quantity: params[:quantity], user_id: current_user.id, product_id: params[:product_id], status: "carted",)
    redirect_to "/carted_products"
  end

  def index
    @cartedproducts = CartedProduct.where(status: "carted", user_id: current_user.id)
  end

end

