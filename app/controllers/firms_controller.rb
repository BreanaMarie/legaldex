class FirmsController < ApplicationController
  def index
    @firms = Firm.all
    render :index
  end

  def show
    @firm = Firm.find(params[:id])
    @representations = Representation.all
    @lawcases = Lawcase.all
    render :show
  end

  def new
    @firm = Firm.new
    render :new
  end

  def create
    firm_params = params.require(:firm).permit(:name, :profile, :address, :city, :state, :zipcode, :phone, :fax, :image)
    @firm = Firm.new(firm_params)
    if @firm.save
      redirect_to firm_path(@firm)
    else
      render :new
    end
  end

  def edit
    @firm = Firm.find(params[:id])
    render :edit
  end

  def update
    @firm = Firm.find(params[:id])
    updated_attributes = params.require(:firm).permit(:name, :profile, :address, :city, :state, :zipcode, :phone, :fax, :image)
    @firm.update_attributes(updated_attributes)
    redirect_to @firm
  end

end
