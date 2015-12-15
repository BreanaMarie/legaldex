class CasesController < ApplicationController
  def index
  end

  def show
    @case = Case.find_by_id(params[:id])
    @handlings = Handling.all
    @representations = Representation.all
    render :show
  end

  def new
    @case = Case.new
    render :new
  end

  def create
    case_params = params.require(:case).permit(:title, :internal_number, :case_number, :filed, :jurisdiction, :law_type, :case_status, :summary)
    @case = Case.new(case_params)
      if @case.save
        redirect_to case_path(@case)
      else
        render :new
      end
  end

  def edit
    @case = Case.find(params[:id])
    render :edit
  end

  def update
    @case = Case.find(params[:id])
    updated_attributes = params.require(:case).permit(:title, :internal_number, :case_number, :filed, :jurisdiction, :law_type, :case_status, :summary)
    @case.update_attributes(updated_attributes)
    redirect_to @case
  end

  def destroy
  end

end
