class SingleStore
  attr_reader :city, :state, :address, :type, :mon, :tues, :wed, :thurs, :fri,
              :sat, :sun, :longName

  def initialize(store)
    @name = store[:longName]
    @city = store[:city]
    @state = store[:region]
    @address = store[:address]
    @type = store[:storeType]
    @mon = store[:hoursAmPm].split("; ").first
    @tues = store[:hoursAmPm].split("; ")[1]
    @wed = store[:hoursAmPm].split("; ")[2]
    @thurs = store[:hoursAmPm].split("; ")[3]
    @fri = store[:hoursAmPm].split("; ")[4]
    @sat = store[:hoursAmPm].split("; ")[5]
    @sun = store[:hoursAmPm].split("; ")[6]
  end

end
