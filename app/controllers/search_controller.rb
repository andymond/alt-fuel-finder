class SearchController < ApplicationController

  def index
    conn = Faraday.new("https://developer.nrel.gov")
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['nrel_api_key']}&location=#{params[:q]}&radius=6.0&fuel_type=ELEC,LPG&limit=10")
    results = JSON.parse(response.body)
    @stations = results["fuel_stations"].map { |station| Station.new(station)}
  end

end
