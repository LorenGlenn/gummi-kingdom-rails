class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show

  end

  def new

  end

  def create

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
