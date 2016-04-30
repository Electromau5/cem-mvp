class ProductsController < ApplicationController
    
    before_action :set_product, only: [:show, :edit, :update, :destroy]
    before_action :require_seller, except: [:show]
    before_action :require_admin, except: [:show]
    
  def index
    @product = Product.all
  end

  def new
    @product = Product.new
  end

    def create
      @product = Product.new(product_params)
      if @product.save
        redirect_to products_path
      else
        render 'new'
      end
    end

    def edit
    end

    def update
        if @product.update(product_params)
        redirect_to product_path(@product)
      else 
        render 'edit'
      end
    end

    def show
      @product_seller = @product.seller
      @product_review = @product.review
    end

    def destroy
        @product.destroy
        redirect_to root_path
    end

    private
    def product_params
       params.require(:product).permit(:name,:seller, :feature1, :feature2, :feature3, :feature4, :feature5, :price, :cod, :time, :image, 
                                        :image2, :image3, :image4, :image5, :site, :description, :technical)
    end

    def set_product
        @product = Product.find(params[:id])
    end

    def require_seller
      if !logged_in?
        redirect_to root_path 
      end
    end
  
    def require_same_seller
      if current_seller != @product.seller
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