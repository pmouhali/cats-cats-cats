class CartsController < ApplicationController


  def destroy
    @cart_with_item = Cart.find(current_user.id)
    if @cart_with_item.items.where(name: @item_to_delete.name).destroy
      flash[:notice] = "Le chat a été retiré du panier"
    else
      flash[:error] = "Erreur"
    end

    respond_to do |format|
      format.html
      format.js
    end

  end

end
