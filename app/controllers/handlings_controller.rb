class HandlingsController < ApplicationController

  def new
    @handling = Handling.new
    @users = User.all
    @current_user = current_user
    @lawcases = Lawcase.all
    render :new
  end

  def create
    handling_params = params.require(:handling).permit(:user_id, :lawcase_id)
    @handling = Handling.new(handling_params)
    @current_user = current_user
    @users = User.all
    @lawcases = Lawcase.all
     if @handling.save
      redirect_to lawcase_path(@handling.lawcase_id)
     else
       render :new
     end
  end
end
