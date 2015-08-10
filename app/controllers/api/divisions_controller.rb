class Api::DivisionsController < ApplicationController
  # List all divisions in our database, this is not season specific.
  # Meaning, this will list every division that has every existed in DCI.
  #
  def index
    divisions = Division.all.load
    render json: DivisionMapping.represent_collection_for(:read, divisions)
  end
end
