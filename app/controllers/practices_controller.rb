class PracticesController < ApplicationController
  def new
    @practice = Practice.new
    render :new
  end

  def create
    practice_params = params.require(:practice).permit(:title)
    @practice = Practice.new(practice_params)
     if @practice.save
     redirect_to "/" # <-- go to show
     else
       render :new
     end
  end

  def show
    @practice = Practice.find_by_id(params[:id])
    @users = User.all
    @groups= Group.all
  end
end
