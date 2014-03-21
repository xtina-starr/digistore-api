class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def create
    @order = Order.create(
      first_name: order_params[:first_name],
      last_name: order_params[:last_name],
      email: order_params[:email],
      credit_card: order_params[:credit_card],
      cvv: order_params[:cvv],
      exp: order_params[:expiration_date],
      status: order_params[:status],
      cart_id: order_params[:cart]
      )
    render "show"
    OrderMailer.confirmation_email(@order).deliver
  end

  def show
    @order = Order.find(params[:id])
  end

  private
  def order_params
    params.require(:order).permit(:first_name, :last_name, :email, :credit_card, :cvv, :expiration_date, :status, :cart)
  end
end
