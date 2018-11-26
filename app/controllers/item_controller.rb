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
    puts @item
    @cart.items << @item
  end

  def cart_show
    @user = User.find(current_user.id)
    @user_cart = Cart.find(@user.id)
  end


end


# Mailer section

# Action for trigger mailer to be define

# ContactMailer.contact(@user).deliver_now
