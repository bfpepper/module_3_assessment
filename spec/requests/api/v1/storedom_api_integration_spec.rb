require "rails_helper"

describe "Storedom API integration" do
  context "GET /api/v1/items" do
    it "returns all items in the database" do

      item1, itme2, item3 = create_list(:item, 3)

      get 'api/v1/items'

      items = JSON.parse(response.body)

      expect(items.count).to eq(3)
      expect(response).to have_http_status(200)

      item = items.first

      expect(item["name"]).to eq(item1.name)
      expect(item["description"]).to eq(item1.description)
      expect(item["image_url"]).to eq(item1.image_url)
    end
  end

  context "GET /api/v1/items/1" do
    it ""
  end
end

# When I send a GET request to `/api/v1/items/1`
# I receive a 200 JSON response containing the id, name, description, and image_url but not the created_at or updated_at
