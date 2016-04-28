class ListingsController < ApplicationController
    
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    before_action :require_seller, except: [:show]
    before_action :require_same_seller, only: [:edit, :update, :destroy]
    before_action :require_admin, only: [:index]
    
  def index
    @listing = Listing.all
  end

  def new
    @listing = Listing.new
  end

    def create
      @listing = Listing.new(listing_params)
        @listing.seller = current_seller
      if @listing.save
        redirect_to seller_path(current_seller)
      else
        render 'new'
      end
    end

    def edit
    end

    def update
        if @listing.update(listing_params)
        redirect_to listing_path(@listing)
      else 
        render 'edit'
      end
    end

    def show
         @listing_seller = @listing.seller
         @listing_reviews = @listing.reviews
    end

    def destroy
        @listing.destroy
        redirect_to root_path
    end

    private
    def listing_params
       params.require(:listing).permit(:name, :feature1, :feature2, :feature3,:feature4, :feature5, :price, :cod, :time, :description, :technical, :image, 
                                        :image2, :image3, :image4, :image5, :site)
    end

    def set_listing
        @listing = Listing.find(params[:id])
    end

    def require_seller
      if !logged_in?
        redirect_to root_path 
      end
    end
  
    def require_same_seller
      if current_seller != @listing.seller
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