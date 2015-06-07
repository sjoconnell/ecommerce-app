class ProductsController < ApplicationController

  def index
    @products = Product.all
    if params[:sort]
      @products = Product.order(params[:sort] => params[:sort_order])
    end
    if params[:discount]
      @products = Product.where("price < ?", 10)
    end
  end
  
  def show
    if params[:id] == 'random'
      product = Product.all
      @product = product.sample
    else
    @product = Product.find_by(id: params[:id])
    end
  end
  
  def new
  end
  
  def create
    @product = Product.create(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    flash[:success] = "Product created"
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    flash[:warning] = "Product updated"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:danger] = "Product destroyed"
    redirect_to "/"
  end

  def search
    search_term = params[:search]
    @products = Product.where("name LIKE ?", "%#{search_term}%")
    render :index
  end

end
