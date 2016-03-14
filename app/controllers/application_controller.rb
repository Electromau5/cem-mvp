class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user, :logged_in?

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
  	#!current_seller.nil?
    !!current_user
  end

  def require_user
  	if !logged_in?
      #flash[:notice] = "You need to be an active seller to make changes to a seller's account"
      redirect_to root_path
  	end
  end

  
  def require_admin
      if (logged_in? && !current_user.admin) || (!logged_in?)
        redirect_to root_path
      end
    end
  end 