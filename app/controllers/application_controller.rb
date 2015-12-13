class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  include SessionsHelper
  

   def current_user
      @current_user ||= session[:user_id] && User.find_by_id(session[:user_id])
    end 
  include SessionsHelper
  
end
