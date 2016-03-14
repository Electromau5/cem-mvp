class SellersController < ApplicationController

	before_action :set_seller, only: [:edit, :update, :show, :destroy]
	#before_action :require_seller, except:[:new, :create, :show]
	#before_action :require_same_seller, only: [:edit, :update, :index]
	before_action :require_admin, only: [:index]

	def index
		@seller = Seller.all
	end

	def new
		@seller = Seller.new
	end

	def create
		@seller = Seller.new(seller_params)
			if @seller.save
					bsession[:seller_id] = @seller.id
					redirect_to seller_path(@seller)
			else
					render 'new'
			end
	end

	def edit
	end

	def update
			if @seller.update(seller_params)
				redirect_to seller_path(@seller)
			else
				render 'edit'
			end
	end

	def show
		#@seller_listings = @seller.listings
	end	

	def destroy
		@seller.destroy
		#redirect_to categories_path
	end

	private
		def seller_params
			params.require(:seller).permit(:sellername, :email, :storename, :description, :location, :password)
		end
		
		def set_seller
			@seller = Seller.find(params[:id])
		end

		

end