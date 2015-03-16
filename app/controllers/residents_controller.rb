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

  def edit
    @resident = Resident.find(params[:id])
  end

  def update
    @resident = Resident.find(params[:id])
    if @resident.update(resident_params)
      redirect_to residents_path, notice: "Resident was successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @resident = Resident.find(params[:id])
    @resident.destroy
    redirect_to residents_path, notice: "Resident was successfully deleted!"
  end


  private
  def resident_params
    params.require(:resident).permit(:first_name, :last_name, :tower, :unit, :telephone, :email, :fullname)
  end

end
