class CartedProductsController < ApplicationController

  def create
    CartedProduct.create(quantity: params[:quantity], user_id: current_user.id, product_id: params[:product_id], status: "carted",)
    redirect_to "/carted_products"
  end

  def index
    if user_signed_in? && current_user.carted_products.where(status: "carted").any?
      @cartedproducts = CartedProduct.where(status: "carted", user_id: current_user.id)
    else
      redirect_to "/"
    end
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: "removed")
    flash[:success] = "Product Removed"
    redirect_to "/carted_products"
  end

end

