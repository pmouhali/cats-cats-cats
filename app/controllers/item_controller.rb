class ItemController < ApplicationController
  def index
  	@allitems = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end
end
