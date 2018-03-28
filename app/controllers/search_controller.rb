class SearchController < ApplicationController

  def index
    service = LocationSearchService.new(params[:q], "6.0", "10")
    @stations = service.stations
  end

end
