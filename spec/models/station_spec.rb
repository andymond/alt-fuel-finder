require "rails_helper"

# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

describe Station do
  let(:attrs)  {
                  { "station_name" => "test_name",
                   "city" => "city",
                   "street_address" => "street_address",
                   "state" => "state",
                   "zip" => "zipcode",
                   "country" => "country",
                   "fuel_type_code" => "test_fuel",
                   "distance" => "1",
                   "access_days_time" => "247"
                  }
                }
  let(:station) { Station.new(attrs) }

  it "responds to attributes" do
    expect(station.name).to eq("test_name")
    expect(station.address).to eq("street_address\ncity, state\nzipcode, country")
    expect(station.fuel_types).to eq("test_fuel")
    expect(station.distance).to eq("1")
    expect(station.access_times).to eq("247")
  end
end
