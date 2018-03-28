require "rails_helper"
# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
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

    expect(current_path).to eq("/search?zipcode=80203")
    expect(page).to have_content(search_results)
  end
end
