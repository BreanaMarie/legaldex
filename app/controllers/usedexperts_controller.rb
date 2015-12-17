class UsedexpertsController < ApplicationController
  def new
    @usedexpert = Usedexpert.new
    @lawcases = Lawcase.all
    @experts = Expert.all
  end

  def create
    usedexpert_params = params.require(:usedexpert).permit(:lawcase_id, :expert_id)
    @usedexpert = Usedexpert.new(usedexpert_params)
    @lawcases = Lawcase.all
    @experts = Expert.all
    if @usedexpert.save
     redirect_to lawcase_path(@usedexpert.lawcase_id)
    else
      render :new
    end
  end
end
