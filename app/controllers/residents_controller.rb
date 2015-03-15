class ResidentsController < ApplicationController

  def index
    @residents = Resident.all
  end

  def new
    @resident = Resident.new
  end


  def create
    @resident = Resident.new(resident_params)
    if @resident.save
      redirect_to residents_path, notice: "Resident was successfully created!"
    else
      render :new
    end
  end

  

  private
  def resident_params
    params.require(:resident).permit(:first_name, :last_name, :tower, :unit, :telephone, :email, :fullname)
  end

end
