class StoreService

  def initialize
    @connection = Faraday.new("https://api.bestbuy.com/v1")
  end

  def get_stores(zipcode)
    stores = @connection.get "stores(area(#{zipcode},25))?format=json&pageSize=15&show=storeId,storeType,city,distance,phone,longName&apiKey=#{ENV['api_key']}"
    JSON.parse(stores.body, symbolize_names: true)
  end

  def get_store(id)
    store = @connection.get "stores(storeId=#{id})?format=json&show=hoursAmPm&apiKey=#{ENV['api_key']}"
    JSON.parse(store.body, symbolize_names: true)
  end

end
