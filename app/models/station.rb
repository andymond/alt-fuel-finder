class Station

  attr_reader :name, :fuel_types, :distance, :access_times

  def initialize(attributes)
    @name = attributes["station_name"]
    @street_address = attributes["street_address"]
    @city = attributes["city"]
    @state = attributes["state"]
    @zipcode = attributes["zip"]
    @country = attributes["country"]
    @fuel_types = attributes["fuel_type_code"]
    @distance = attributes["distance"]
    @access_times = attributes["access_days_time"]
  end

  def address
    [@street_address, "\n", @city, ", ", @state, "\n", @zipcode, ", ", @country].join
  end

end
