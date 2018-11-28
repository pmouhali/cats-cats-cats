class AdminController < ApplicationController
  def dashboard
  	if current_user.try(:admin?)
  		@admin = current_user
  	else
  		redirect_to '/'
  	end
  	@orders = Order.all
  end
end
