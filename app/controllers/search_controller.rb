class SearchController < ApplicationController

  def index
    conn = Faraday.new("https://developer.nrel.gov")
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['nrel_api_key']}&location=#{params[:q]}")
  end

end
