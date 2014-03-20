class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def create
    @item = Item.create(
      cart_id: item_params[:cart],
      product_id: item_params[:product],
      quantity: item_params[:quantity]
      )
  end

  def show
    @items = Item.find(params[:ids])
  end

  def update
    @item = Item.find(params[:id])
    @item.update
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end

private
  def item_params
    params.require(:item).permit(:current_price, :quantity, :cart_id, :product_id)
  end
end