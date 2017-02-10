class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    render :show
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

  end

  def update

  end

  def destroy

  end

  private
  def product_params
    params.require(:product).permit(:name, :cost, :country, :image)
  end
end
