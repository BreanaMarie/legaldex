class RepresentationsController < ApplicationController
  def show
  end

  def new
    @representation = Representation.new
    @companies = Company.all
    @firms = Firm.all
    @lawcases = Lawcase.all

    render :new
  end

  def create
    representation_params = params.require(:representation).permit(:company_id, :lawcase_id, :firm_id, :atorney, :role)
    @representation = Representation.create(representation_params)
    @lawcases = Lawcase.all
      if @representation.save
        redirect_to lawcase_path(@representation.lawcase_id) # <-- go to case
      else 
        render :new
      end
  end
end
