class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def create
    
    carted_products = current_user.carted_products.where(status: "carted")

    calc_subtotal = carted_products.map{ |carted_product| carted_product.product.price * carted_product.quantity}.sum
    calc_tax = calc_subtotal * 0.1025
    calc_total = calc_subtotal + calc_tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calc_subtotal,
      tax: calc_tax,
      total: calc_total
    )
    if @order.save
      carted_products.update_all(order_id: @order.id, status: "purchased")
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
