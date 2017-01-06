class StoreService

  def initialize
    @connection = Faraday.new("https://api.bestbuy.com/v1/stores")
  end
  # https://api.bestbuy.com/v1/stores

  def get_stores(zipcode)
    stores = @connection.get "(area(#{zipcode},25))?format=json&show=storeType,city,distance,phone,longName&apiKey=#{ENV['api_key']}"
    binding.pry
  end

end
