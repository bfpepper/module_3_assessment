class Store
  attr_reader :name, :city, :distance, :phone, :type, :id


  def initialize(store)
    binding.pry
    @id = store[:storeId]
    @name = store[:longName]
    @city = store[:city]
    @distance = store[:distance]
    @phone = store[:phone]
    @type = store[:storeType]
  end

  def self.all(zipcode)
    stores = StoreService.new.get_stores(zipcode)
    stores[:stores].map do |store|
      Store.new(store)
    end
  end

end
