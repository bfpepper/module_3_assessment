class StoreService

  def initialize
    @connection = Faraday.new("'https://api.bestbuy.com/v1")
  end

  def get_stores(zipcode)
    binding.pry
  end

end
