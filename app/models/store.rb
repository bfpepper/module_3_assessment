class Store

  def self.all(zipcode)
    stores = StoreService.new.get_stores(zipcode)
    
  end

end
