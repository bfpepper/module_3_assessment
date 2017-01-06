class StoreService

  def initialize
    @connection = Faraday.new("https://api.bestbuy.com/v1")
  end

  def get_stores(zipcode)
    stores = @connection.get "stores(area(#{zipcode},25))?format=json&pageSize=15&show=storeType,city,distance,phone,longName&apiKey=#{ENV['api_key']}"
    JSON.parse(stores.body, symbolize_names: true)
  end

end
