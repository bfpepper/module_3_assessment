# require "rails_helper"
#
# describe "User visits root path" do
#   context "enters a zip code into the search bar" do
#     it "it returns a list a stroes" do
#
#       visit root_path
#
#       fill_in :g, with: "80202"
#       click_on "Search"
#
#       expect(current_path).to eq(stores_path)
#     end
#   end
# end

# As a user
# When I visit "/"
# And I fill in a search box with "80202" and click "search"
# Then my current path should be "/search" (ignoring params)
# And I should see stores within 25 miles of 80202
# And I should see a message that says "16 Total Stores"
# And I should see exactly 15 results
# And I should see the long name, city, distance, phone number and store type for each of the 15 results