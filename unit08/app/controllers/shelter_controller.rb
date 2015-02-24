class ShelterController < ApplicationController

  # GET /shelter/index
  def index
  	@pets = Pet.where("pet_status = 'Available'").order(:pet_type)
  end

end
