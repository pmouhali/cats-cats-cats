class ItemController < ApplicationController
  def index
  	@allitems = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end
end


# Mailer section

# Action for trigger mailer to be define

# ContactMailer.contact(@user).deliver_now
