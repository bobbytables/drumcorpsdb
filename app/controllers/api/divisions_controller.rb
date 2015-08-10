class Api::DivisionsController < ApplicationController
  def index
    divisions = Division.all.load
    render json: DivisionMapping.represent_collection_for(:read, divisions)
  end
end
