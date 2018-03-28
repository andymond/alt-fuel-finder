class LocationSearchService

  def initialize(zip, distance, limit)
    @zip = zip
    @distance = distance
    @limit = limit
    @conn = Faraday.new("https://developer.nrel.gov")
  end

  def stations
    url = "/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['nrel_api_key']}&location=#{zip}&radius=#{distance}&fuel_type=ELEC,LPG&limit=#{limit}"
    get_json(url)["fuel_stations"].map { |s| Station.new(s) }
  end

  private
    attr_reader :zip, :distance, :limit, :conn

    def get_json(url)
      response = conn.get(url)
      JSON.parse(response.body)
    end
end
