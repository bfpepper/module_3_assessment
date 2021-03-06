require "rails_helper"

describe "User sees specific stroe info" do
  it "shows more detailed info the a given store" do
    VCR.use_cassette("store") do

      visit root_path

      fill_in :q, with: "80202"
      click_on "Search"

      click_on "Best Buy - Belmar"

      expect(page).to have_content("Mon: 10am-9pm")
      expect(page).to have_content("Tue: 10am-9pm")
      expect(page).to have_content("Wed: 10am-9pm")
      expect(page).to have_content("Thurs: 10am-9pm")
      expect(page).to have_content("Fri: 10am-9pm")
      expect(page).to have_content("Sat: 10am-9pm")
      expect(page).to have_content("Sun: 10am-7pm")
      # expect(page).to have_content("Best Buy - Belmar")
      # expect(page).to have_content("BigBox")
      # expect(page).to have_content("BigBox")
    end
  end
end

# As a user
# After I have searched a zip code for stores
# When I click the name of a store
# Then my current path should be "/stores/:store_id"
# I should see the store name, store type and address with city, state and zip
# I should see an unordered list of the store hours in the following format:
#   * Mon: 10am-9pm
#   * Tue: 10am-9pm
#   * Wed: 10am-9pm
#   * Thurs: 10am-9pm
#   * Fri: 10am-9pm
#   * Sat: 10am-9pm
#   * Sun: 11am-7pm
