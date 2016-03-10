class UsersController < ApplicationController
	
	before_action :set_users, only: [:edit, :update, :show, :destroy]
	#before_action :require_same_user, only: [:edit, :update, :show, :destroy]
	before_action :require_admin, only: [:edit, :update, :show, :destroy]
	
	def index
		@user = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
			if @user.save
				session[:user_id] = @user.id
				#flash[:success] = "Welcome to the alpha blog #{@user.username}"
				redirect_to product1s_path	
			else
				render 'new'
			end
	end

	def edit
	end

	def update
			if @user.update(user_params)
				#flash[:success] = "Your account was updated successfully"
				redirect_to product1s_path
			else
				render 'edit'
			end
	end

	def show
	end

	def destroy
		@user.destroy
		redirect_to product1s_path
	end

private
	def user_params
		params.require(:user).permit(:username, :email, :password)
	end

	def set_users
		@user = User.find(params[:id])
	end

	def require_same_user
		if logged_in? && current_user != @user
			#flash[:danger] = "You can only edit your own account"
			redirect_to root_path
		end
	end
end