class PaymentsController < ApplicationController
	def create
		@product = Product.find(params[:product_id])
		@user = current_user
		token = params[:stripeToken]
		# create the charge on Stripe's servers - this will charge the user's card
		begin
			
			charge = Stripe::Charge.create(
				:amount => @product.price.to_i*100, # amount in cents
				:currency => "usd",
				:source => token,
				:description => params[:stripeEmail]
			)


			if charge.paid
				Order.create()
			end

		rescue Stripe::CardError => e
			# card declined
			body = e.json_body
			err = body[:error]
			flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
		end

		redirect_to product_path(@product)
	
	end
end
