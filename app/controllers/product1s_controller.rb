class Product1sController < ApplicationController

	def index
		@product1 = Product1.all
  	end

  	def new
		@product1 = Product1.new
  	end

  def create
  	@product1 = Product1.new(product1_params)
  	if @product1.save
  	  #flash[:success] = "Post was successfully created"
  	   redirect_to product1_path(@product1)
  	else
  	  render 'new'
    end
  	end

  def show
  	@product1 = Product1.find(params[:id])
    @product1_listings = @product1.listings
  end 

  def edit
  	@product1 = Product1.find(params[:id])
  end

  def update
  	@product1 = Product1.find(params[:id])
      if @product1.update(product1_params)
        redirect_to product1_path(@product1)
      else
        render 'edit'
      end
  end  
  
  def destroy
    @product1 = Product1.find(params[:id])
   	@product1.destroy
    redirect_to product1s_path
  end
  
  private
  def product1_params
  	params.require(:product1).permit(:title, :feature1, :feature2, 
  								:feature3, :feature4, :feature5, :spec1, 
  								:spec2, :spec3, :spec4, :spec5)
  end 
end