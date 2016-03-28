class SellersController < ApplicationController

	def index
		@seller = Seller.all
	end

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

	def edit
		@seller = Seller.find(params[:id])
	end

	def update
		@seller = Seller.find(params[:id])
			if @seller.update(seller_params)
				#flash[:success] = "Your account was updated successfully"
			redirect_to reviews_path
		else
			render 'edit'
		end
	end

	def show
		@seller = Seller.find(params[:id])
		@seller_listings = @seller.listings
	end

private

	def seller_params
		params.require(:seller).permit(:brand, :email, :password, :location, :description)
	end
end

