class SessionsController < ApplicationController
 def new
   @user = User.new
   render :new
 end

  def create

   user_params = params.require(:user).permit(:email, :password)
   # byebug
   @user = User.confirm(user_params)
   if @user
     login(@user)
     redirect_to @user
   else
     redirect_to new_session_path
   end
 end

 def current_user
   @current_user ||= session[:user_id] && User.find_by_id(session[:user_id])
 end


 def destroy
   logout
   redirect_to root_path 
 end
end
