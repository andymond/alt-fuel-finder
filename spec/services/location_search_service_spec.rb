require "rails_helper"

describe LocationSearchService do
  zip, distance, limit = "80203", "6.0", "10"
  let (:service) { LocationSearchService.new(zip, distance, limit) }
  it "#instance methods" do
    expect(service.results).to be_an Array
    expect(service.results.first).to be_a Station
    expect(service.results.count).to eq(10)
    expect(service.results.first.name).to eq("UDR")
  end
end
