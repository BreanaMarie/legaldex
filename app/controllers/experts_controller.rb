class ExpertsController < ApplicationController
  def index
    @experts = Expert.all
  end

  def show
    @expert = Expert.find_by_id(params[:id])
    @groups = Group.all
    @practices = Practice.all
    render :show
  end

  def new
    @expert = Expert.new
    render :new
  end

  def create
    expert_params = params.require(:expert).permit(:first_name, :last_name, :middle_name, :company, :title, :time_in_field, :email, :address, :phone, :phone2, :city, :state, :zipcode, :bio, :image)
    @expert = Expert.new(expert_params)
      if @expert.save
        redirect_to expert_path(@expert)
      else
        render :new
      end
  end

  def edit
    @expert = Expert.find(params[:id])
    render :edit
  end

  def update
    @expert = Expert.find(params[:id])
    updated_attributes = params.require(:expert).permit(:first_name, :last_name, :middle_name, :company, :title, :time_in_field, :email, :address, :phone, :phone2, :city, :state, :zipcode, :bio, :image)
    @expert.update_attributes(updated_attributes)
    redirect_to @expert
  end

  def destroy
    @expert = Expert.find(@expert)
    redirect_to @user
  end
end

