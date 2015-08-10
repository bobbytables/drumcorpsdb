class Api::SeasonsController < ApplicationController
  # Render all seasons in our database.
  # Fetches and renders all seasons as JSON
  #
  def index
    seasons = Season.all.load
    render json: SeasonMapping.represent_collection_for(:read, seasons)
  end
end
