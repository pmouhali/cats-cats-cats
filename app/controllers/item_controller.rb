class ItemController < ApplicationController
  def index
  	@allitems = Item.all
  end

  def new
    @new_item = Item.new
  end

  def create
    @new_item = Item.new
    @new_item.name = params["item"]["name"]
    @new_item.price = params["item"]["price"]
    @new_item.image = params["item"]["image"]
    @new_item.save
    redirect_to '/admin/dashboard'
  end

  def edit
    @edit_item = Item.find(params[:id])
  end

  def update
    @edit_item = Item.find(params["item"]["@edit_item"])
    @edit_item.update(name:params["item"]["name"])
    @edit_item.update(image:params["item"]["image"])
    @edit_item.update(price:params["item"]["price"])
    redirect_to "/item/show/#{params["item"]["@edit_item"]}"
  end

  def destroy
    Item.find(params[:id]).delete
    redirect_to '/'
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
