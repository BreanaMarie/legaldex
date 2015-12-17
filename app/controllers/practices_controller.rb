class PracticesController < ApplicationController
  def index
    @practices = Practice.all.order(:title)

  end
    
  def new
    @practice = Practice.new
    render :new
  end

  def create
    practice_params = params.require(:practice).permit(:title)
    @practice = Practice.new(practice_params)
     if @practice.save
     redirect_to @practice
     else
       render :new
     end
  end

  def show
    @practice = Practice.find_by_id(params[:id])
    @current_user = current_user
    @users = User.all
    @groups= Group.all.order(:first_name)
    @group= Group.new
    @assignments = Assignment.all
    @usedexperts = Usedexpert.all

  end

  def destroy

  end

end
