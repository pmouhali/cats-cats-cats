class AdminController < ApplicationController
  def dashboard
  	if current_user.admin? then @admin = current_user end
  end
end