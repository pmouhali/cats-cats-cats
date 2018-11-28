class ProfilController < ApplicationController
  def show

    if !current_user.nil? 
      @user = User.find(params[:id])
    else
      flash[:danger] = "You must be logged to reach this page"
      redirect_to root_path
    end

  end
end
