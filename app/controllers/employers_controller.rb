class EmployersController < ApplicationController
  
  def index
    @employers = Employer.all
    render json: @employers
  end
  
  def show
  end
  
  def new
    @employer = Employer.new
  end
  
  def edit
  end
  
  def create
    @employer = Employer.new(employer_params)
    
      if @employer.save
        render json: @employer
      else
        render json: @employer.errors
      end
  end
  
  def destroy
    @employer.find(params[:id])
    @employer.destroy
  end
  
  private
  
  def employer_params
    params.require(:employer).permit(:legal_name, :hbx_id, :fein, :is_active, :user, :dba, :registered_on, :profile_source)
  end
end
