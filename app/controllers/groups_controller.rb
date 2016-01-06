class GroupsController < ApplicationController
  def index

  end

  def show
    @group=Group.find(params[:id])
  end

  def new
    @group = Group.new
    @users = User.all
    @current_user = current_user
    @practices = Practice.all
    render :new
  end

  def create
    group_params = params.require(:group).permit(:practice_id, :user_id)
    @group = Group.new(group_params)
    @current_user = current_user
    @users = User.all
    @practices = Practice.all
     if @group.save
      @group.update_attribute(:user_id, current_user.id)
      redirect_to @current_user# <-- go to show
     else
       render :new
     end
  end

  def destroy
    @current_user = current_user
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to @current_user
  end

end

