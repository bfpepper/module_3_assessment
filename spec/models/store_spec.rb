require "rails_helper"

describe "Store Model" do
  it "returns the correct info for the store" do
    VCR.use_cassette("store") do
      store = Store.new({ :storeType => "Mobile",
      :city => "Denver",
      :distance => "3.25",
      :phone => "303-270-9189",
      :longName => "Best Buy Mobile - Cherry Creek Shopping Center"})

      expect(store.name).to eq("Best Buy Mobile - Cherry Creek Shopping Center")
      expect(store.city).to eq("Denver")
      expect(store.distance).to eq("3.25")
      expect(store.phone).to eq("303-270-9189")
      expect(store.type).to eq("Mobile")
    end
  end
end
