require "rails_helper"

describe LocationSearchService do
  zip, distance, limit = "80203", "6.0", "10"
  let (:service) { LocationSearchService.new(zip, distance, limit) }
  it "#instance methods" do
    expect(service.stations).to be_an Array
    expect(service.stations.first).to be_a Station
    expect(service.stations.count).to eq(10)
    expect(service.stations.first.name).to eq("UDR")
  end
end
