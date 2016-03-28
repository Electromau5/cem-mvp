class SellersController < ApplicationController

	def new
		@seller = Seller.new
	end

	def create
		@seller = Seller.new(seller_params)
			if @seller.save
				#flash[:success] = "Welcome to the alpha blog #{@seller.sellername}"
				redirect_to reviews_path
			else
				render 'new'
			end
	end

private

	def seller_params
		params.require(:seller).permit(:brand, :email, :password, :location, :description)
	end
end

