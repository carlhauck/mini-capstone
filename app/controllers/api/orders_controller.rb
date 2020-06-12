class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def create
    
    product = Product.find(params[:product_id])
    quantity = params[:quantity].to_i
    calc_subtotal = product.price * quantity
    calc_tax = calc_subtotal * 0.1025
    calc_total = calc_subtotal + calc_tax

    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: quantity,
      subtotal: calc_subtotal,
      tax: calc_tax,
      total: calc_total
    )
    if @order.save
      render "show.json.jb"
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end

    def show
      @order = Order.find_by(id: params[:id])
      # if @order.user_id == current_user.id
      render "show.json.jb"
      # else
      #   render json: {}
      # end
    end

  end

end
