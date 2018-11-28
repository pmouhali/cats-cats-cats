class OrderController < ApplicationController
  def create
  	@new_order = Order.new
  	@new_order.user_id = params["order"]["user"]
  	@new_order.cart_id = params["order"]["cart"]

  	@cart = Cart.find(params["order"]["cart"])
  	@cart.items.each do |item|
  		@new_order.items << item
  		if @new_order.total == nil
  		@new_order.total = item.price
  		else
  		@new_order.total += item.price
  		end
  	end
  	@new_order.save
  	redirect_to "/order/show/#{@new_order.id}"
  end

  def show
  	@order = Order.find(params[:id])
  end

  def destroy
  end
end


# to add when a succesfull command happend
#       CatMailer.orderconfirm(@user.email).deliver_now
# same for admin
