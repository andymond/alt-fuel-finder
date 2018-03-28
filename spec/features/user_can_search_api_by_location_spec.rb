require "rails_helper"

# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

describe "user visits root" do
  it "can search api by zipcode" do
    visit root_path
    within(".navbar") do
      fill_in "q", with: "80203"
      click_on "Locate"
    end

    expect(current_path).to eq("/search")
    expect(page).to have_css(".result-station", count: 10)
  end
end
