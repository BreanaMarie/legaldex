class HandlingsController < ApplicationController

  def new
    @handling = Handling.new
    @users = User.all
    @current_user = current_user
    @cases = Case.all
    render :new
  end

  def create
    handling_params = params.require(:handling).permit(:user_id, :case_id)
    @handling = Handling.new(handling_params)
    @current_user = current_user
    @users = User.all
    @cases = Case.all
     if @handling.save
      redirect_to case_path(@handling.case_id)
     else
       render :new
     end
  end
end
