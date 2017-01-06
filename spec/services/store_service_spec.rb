require "rails_helper"

describe "Store Service" do
  it "it returns a list of stroes for a given zipcode" do
    VCR.use_cassette("stores") do
      stores = StoreService.new.get_stores("80202")

      first_store = stores[:stores].first

      expect(first_store[:longName]).to eq("Best Buy Mobile - Cherry Creek Shopping Center")
      expect(first_store[:phone]).to eq("303-270-9189")
      expect(first_store[:distance]).to eq(3.25)
      expect(first_store[:city]).to eq("Denver")
      expect(first_store[:storeType]).to eq("Mobile")
      expect(first_store[:storeId]).to eq(2740)
    end
  end
end
