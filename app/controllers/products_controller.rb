class ProductsController < ApplicationController

  before_action :authenticate_admin!, except: [:index, :show, :search]
  before_action :authenticate_user!

  def index
    @products = Product.all
    if params[:sort]
      @products = Product.order(params[:sort] => params[:sort_order])
    end
    if params[:discount]
      @products = Product.where("price < ?", 10)
    end
    if params[:category]
      @products = Category.find_by(name: params[:category]).products
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
    @product = Product.new
  end
  
  def create
      @product = Product.new(name: params[:name], price: params[:price], description: params[:description], supplier_id: params[:supplier][:supplier_id])
      if @product.save
        Image.create(product_id: @product.id, image_url: params[:image])
        flash[:success] = "Product created"
        redirect_to "/products/#{@product.id}"
      else
        render :new
      end
  end

  def edit
      @product = Product.find_by(id: params[:id])
  end

  def update
      @product = Product.find_by(id: params[:id])
    if @product.update(name: params[:name], price: params[:price], description: params[:description])
      flash[:warning] = "Product updated"
      redirect_to "/products/#{@product.id}"
    else
      render :edit
    end
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
