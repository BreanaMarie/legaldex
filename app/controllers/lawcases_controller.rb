class LawcasesController < ApplicationController
  def index
    @lawcases = Lawcase.all
    render :index
  end

  def show
    @lawcase = Lawcase.find_by_id(params[:id])
    @current_user =current_user
    @assignments = Assignment.all
    @practices = Practice.all
    @handlings = Handling.all
    @representations = Representation.all
    @experts = Expert.all
    @usedexperts = Usedexpert.all
    render :show
  end

  def new
    @lawcase = Lawcase.new
    render :new
  end

  def create
    lawcase_params = params.require(:lawcase).permit(:title, :internal_number, :case_number, :filed, :jurisdiction, :law_type, :case_status, :summary)
    @lawcase = Case.new(lawcase_params)
      if @lawcase.save
        redirect_to lawcase_path(@lawcase)
      else
        render :new
      end
  end

  def edit
    @lawcase = Lawcase.find(params[:id])
    render :edit
  end

  def update
    @lawcase = Lawcase.find(params[:id])
    updated_attributes = params.require(:lawcase).permit(:title, :internal_number, :case_number, :filed, :jurisdiction, :law_type, :case_status, :summary)
    @lawcase.update_attributes(updated_attributes)
    redirect_to @lawcase
  end

  def destroy
  end

end
