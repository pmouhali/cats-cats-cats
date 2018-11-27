class CartsController < ApplicationController


  def destroy
    @cart_with_item = Cart.find(current_user.id)
    @item_to_delete = Item.find(params["id"])


    if @cart_with_item.items.delete(@item_to_delete)
      flash[:notice] = "Le chat a été retiré du panier"
      @id = @item_to_delete.id.to_s
    else
      flash[:error] = "Erreur"
    end

    respond_to do |format|
      format.html
      format.js
    end

  end

end
