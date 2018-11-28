class ProfilController < ApplicationController
  def show

    puts current_user.nil?

    if current_user.nil? # Si l'User n'est pas co
      flash[:danger] = "You can't reach that page if you're not logged"
      redirect_to new_user_registration_path

    else

          if current_user.id.to_s == params[:id]
            @user = User.find(params[:id])
          else
            flash[:danger] = "You can't reach that page"
            redirect_to root_path
          end

    end

  end
end
