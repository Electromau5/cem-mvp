class ReviewsController < ApplicationController

	def index
		@review = Review.all
  	end

  	def new
		@review  = Review.new
  	end

  def create
  	@review  = Review.new(review_params)
  	if @review.save
  	  #flash[:success] = "Post was successfully created"
  	   redirect_to review_path(@review )
  	else
  	  render 'new'
    end
  	end

  def show
  	@review  = Review.find(params[:id])
    @review_listings = @review.listings
  end 

  def edit
  	@review  = Review.find(params[:id])
  end

  def update
  	@review  = Review.find(params[:id])
      if @review.update(review_params)
        redirect_to review_path(@review )
      else
        render 'edit'
      end
  end  
  
  def destroy
    @review  = Review.find(params[:id])
   	@review.destroy
    redirect_to reviews_path
  end
  
  private
  def review_params
  	params.require(:review).permit(:title,:ft1,:ft2,:ft3,:ft4,:ft5,:f1,:f2,:f3,
                                   :f4,:f5,:st1,:st2,:st3,:st4,:st5,:s1,:s2,:s3,
                                   :s4,:s5,:image)
  end 
end