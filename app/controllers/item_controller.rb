class ItemController < ApplicationController
  def index
  	@allitems = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  def add_to_cart
    @cart = Cart.find(current_user.id)
    @item = Item.find(params[:id])
    put @item
    @cart.item << @item
  end


end


# Mailer section

# Action for trigger mailer to be define

# ContactMailer.contact(@user).deliver_now
