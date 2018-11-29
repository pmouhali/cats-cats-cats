class CartsController < ApplicationController


  def destroy
    @cart_with_item = Cart.find(current_user.id)
    @item_to_delete = Item.find(params["id"])


    if @cart_with_item.items.delete(@item_to_delete)
      flash[:notice] = "The cat has been deleted."
      @id = @item_to_delete.id.to_s
    else
      flash[:error] = "Error"
    end

    respond_to do |format|
      format.html
      format.js
    end

  end

  def destroy_all
    @cart_with_item = Cart.find(current_user.id)
    @item_to_delete = Item.all


    if @cart_with_item.items.delete(@item_to_delete)
      flash[:notice] = "All the cats were removed."
    else
      flash[:error] = "Error"
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

end
