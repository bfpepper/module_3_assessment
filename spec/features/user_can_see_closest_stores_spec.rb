require "rails_helper"

describe "User visits root path" do
  context "enters a zip code into the search bar" do
    it "it returns a list a stroes" do
      VCR.use_cassette("stores") do

        visit root_path

        fill_in :q, with: "80202"
        click_on "Search"

        expect(current_path).to eq(search_path)
        expect(page).to have_content("There are 16 stores in your search")
        expect(page).to have_content("Best Buy Mobile - Cherry Creek Shopping Center")
        expect(page).to have_content("303-270-9189")
        expect(page).to have_content("3.25")
        expect(page).to have_content("Denver")
        expect(page).to have_content("Mobile")
      end
    end
  end
end
