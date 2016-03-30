class ApplicantsController < ApplicationController
 
    before_action :require_user, only:[:new, :create]
    before_action :require_seller, only: [:index, :destroy]
    before_action :require_admin, only: [:index, :destroy]
    
	def index
		@applicant = Applicant.all
	end

	def new
		@applicant = Applicant.new
	end

	def create
		@applicant = Applicant.new(applicant_params)
			if @applicant.save
				#flash[:success] = "Welcome to the alpha blog #{@applicant.applicantname}"
				redirect_to applicants_path
			else
				render 'new'
			end
	end

	def destroy
		@applicant = Applicant.find(params[:id])
		@applicant.destroy
		redirect_to applicants_path
	end
private

	def applicant_params
		params.require(:applicant).permit(:brand, :email, :password, :location, :description, :product, :category, :site)
	end

	def require_user
		if logged_in?
			redirect_to root_path
		end
	end

	def require_seller
		if !logged_in?
			redirect_to root_path
		end 
	end
	
    def require_admin
      if logged_in? && !current_seller.admin?
        #flash[:danger] = "Only admin users can perform that action"
          redirect_to root_path
      end
    end
end

