class SellersController < ApplicationController

	before_action :set_seller, only: [:show, :edit, :update, :destroy]
    before_action :require_seller, except: [:show]
	before_action :require_same_seller, only: [:edit, :update]
	before_action :require_admin, only: [:new, :create, :index, :destroy]

	def index
		@seller = Seller.all
	end

	def new
		@seller = Seller.new
	end

	def create
		@seller = Seller.new(seller_params)
			@seller = current_seller
			if @seller.save
				#flash[:success] = "Welcome to the alpha blog #{@seller.sellername}"
				redirect_to seller_path(@seller)
			else
				render 'new'
			end
	end

	def edit
	end

	def update
		if @seller.update(seller_params)
			#flash[:success] = "Your account was updated successfully"
				redirect_to seller_path(@seller)
		else
			render 'edit'
		end
	end

	def show
		@seller_listings = @seller.listings
	end

	def destroy
		@seller.destroy
		redirect_to sellers_path
	end
private

	
	def seller_params
		params.require(:seller).permit(:brand, :email, :password, :location, :description, :admin, :image, :image2)
	end

	def set_seller
		@seller = Seller.find(params[:id])
	end

	def require_seller
      if !logged_in?
        redirect_to root_path 
      end
    end
  
    def require_same_seller
      if  current_seller != @seller 
        redirect_to root_path
      end
    end

    def require_admin
      if !current_seller.admin?
        #flash[:danger] = "Only admin users can perform that action"
          redirect_to root_path
      end
    end
end

