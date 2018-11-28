class ChargesController < ApplicationController
	def new
	  @amount = Order.last.total.to_i
	end

	def create
	  # Amount in cents
	  @amount = Order.last.total.to_i

	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :source  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Rails Stripe customer',
	    :currency    => 'usd'
	  )

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to new_charge_path
	end

	if session[:user_id]
		current_user = User.find(session[:user_id])
	else
		current_user = nil
	end

	if !current_user.nil?
		@user_who_order = current_user.email
	end


	#USER CONFIRMATION MAIL
	CatMailer.orderconfirm(@user_who_order).deliver_now
	#ADMIN CONFIRMATION MAIL (to add in seed.rb)
	#	CatMailer.oneorderhasbeendone(admin).deliver_now #ADMIN


end
