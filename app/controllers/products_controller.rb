class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :price, :description, :image, :avatar))
    @product.save
  end
end
