class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params.require(:product).permit(:title, :artist, :price, :image, :avatar))
    @product.save
    render "show"
  end

  def update
    @product = Product.find(params[:id])
    @product.update(params.require(:product).permit(:title, :artist, :price, :image, :avatar))
    render "show"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render "index"
  end
end
