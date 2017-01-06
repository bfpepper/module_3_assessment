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
    it "returns the info the a given item" do

      item1, item2 = create_list(:item, 2)

      get "/api/v1/items/#{item1.id}"

      item = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(item["name"]).to eq(item1.name)
      expect(item["description"]).to eq(item1.description)
      expect(item["image_url"]).to eq(item1.image_url)
    end
  end

  context "DELETE /api/v1/items/1" do
    it "Deletes a record from the database" do

      item1, item2 = create_list(:item, 2)

      expect(Item.count).to eq(2)

      delete "api/v1/items/#{item1.id}"

      expect(response).to have_http_status(204)
      expect(Item.count).to eq(1)
    end
  end

  context "POST to /api/v1/items" do
    it "Creates a new item in the database" do

      expect(Item.count).to eq(0)

      data = {name: "Thing", description: "that thing", image_url: "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.ladiesgadgets.com%2Fwp-content%2Fuploads%2F2011%2F09%2FCool-Toy-Car-Powers-From-Salt-Water-1.jpg&f=1"}

      post "/api/v1/items", data.to_json, { 'CONTENT_TYPE' => 'application/json'}

      post_result = JSON.parse(response.body)

      expect(response).to have_http_status(201)
      expect(post_result["name"]).to eq("Thing")
      expect(post_result["description"]).to eq("That thing")
      expect(post_result["image_url"]).to eq("Thing")
# I receive a 201 JSON  response if the record is successfully created
# And I receive a JSON response containing the id, name, description, and image_url but not the created_at or updated_at
    end
  end
end
