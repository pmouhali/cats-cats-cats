class CartsController < ApplicationController

  def show
  	@cart = Cart.find(current_user.id)
    @cart.item = Item.find(params[:id])
  end

end
