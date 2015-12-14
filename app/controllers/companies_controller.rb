class CompaniesController < ApplicationController
  def index
  end

  def show
    @company = Company.find_by_id(params[:id])
    render :show
  end

  def new
    @company = Company.new
    render :new
  end

  def create
    company_params = params.require(:company).permit(:name, :industry, :contact1, :contact2, :role, :profile, :image, :address, :city, :state, :zipcode, :phone, :fax, :email)
    @company = Company.new(company_params)
      if @company.save
        redirect_to company_path(@company)
      else
        render :new
      end
  end

  def edit
    @company = Company.find(params[:id])
    render :edit
  end

  def update
    @company = Company.find(params[:id])
    updated_attributes = params.require(:company).permit(:name, :industry, :contact1, :contact2, :role, :profile, :image, :address, :city, :state, :zipcode, :phone, :fax, :email)
    @company.update_attributes(updated_attributes)
    redirect_to @company
  end

  def destroy
  end
end
