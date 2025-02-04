class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def complex_params
    @order = Order.create
    @customer = @order.create_customer(name: "田中太郎", email: "tanaka@example.com")
    @items = [
      @order.items.create(name: "商品A", price: 1000),
      @order.items.create(name: "商品B", price: 2000)
    ]
    binding.pry
    render json: @order
   end

  def conditional_debug
    @result = params[:value].to_i
    binding.pry
    render json: { result: @result }
  end

  private
  def order_params
    params.require(:order).permit(customer: [ :name, :email ], items: [ :name, :price ])
  end
end
