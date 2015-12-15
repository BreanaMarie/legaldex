class RepresentationsController < ApplicationController
  def show
  end

  def new
    @representation = Representation.new
    @companies = Company.all
    @firms = Firm.all
    @cases = Case.all

    render :new
  end

  def create
    representation_params = params.require(:representation).permit(:company_id, :case_id, :firm_id, :atorney, :role)
    @representation = Representation.create(representation_params)
    @cases = Case.all
      if @representation.save
        redirect_to case_path(@representation.case_id) # <-- go to case
      else 
        render :new
      end
  end
end
