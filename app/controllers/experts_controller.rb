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
    expert_params = params.require(:expert).permit(:first_name, :last_name, :bio)
    @expert = Expert.new(expert_params)
      if @expert.save
        redirect_to expert_path(@expert)
      else
        render :new
      end
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
  end

  def delet
  end
end
