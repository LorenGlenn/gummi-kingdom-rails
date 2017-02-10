class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    @products = Product.all
    render :index
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @products = Product.all
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product Updated!"
      render :index
    else
      flash[:alert] = "Product Update Failed!"
      render :index
    end
  end

  def destroy

  end

  private
  def product_params
    params.require(:product).permit(:name, :cost, :country, :image)
  end
end
