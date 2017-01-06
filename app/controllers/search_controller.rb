class SearchController < ApplicationController

  def index
    @stores = Store.all(params[:q])
    binding.pry
  end

end
