class ResidentsController < ApplicationController

  def index
    @residents = Resident.all
  end

  def new
    
  end

end
