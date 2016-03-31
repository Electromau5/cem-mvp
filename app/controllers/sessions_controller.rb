class SessionsController < ApplicationController

before_action :require_user, only:[:new, :create]
before_action :require_seller, only:[:destroy]

def new
end

def create
	seller = Seller.find_by(brand: params[:session][:brand])
	if seller && seller.authenticate(params[:session][:password])
		session[:seller_id] = seller.id
		#flash[:success] = 'You have successfully logged in'
		redirect_to reviews_path
	else
		#flash.now[:danger] = "There was something wrong with your login information"
		render 'new'
	end
end

def destroy
	session[:seller_id] = nil
	#flash[:success] = 'You have successfully logged out'
	redirect_to reviews_path
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

end