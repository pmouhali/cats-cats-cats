class ChargesController < ApplicationController

	def new
	  @amount = Order.last.total.to_i
		@current_user = current_user
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


		@email = charge["source"]["name"]

		CatMailer.orderconfirm(@email).deliver_now
		#CatMailer.orderconfirm(ADMIN).deliver_now #=====> ADMIN MAILER


		rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to new_charge_path

	end

	redirect_to root_path

end
