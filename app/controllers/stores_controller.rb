class StoresController < ApplicationController

  def show
    @store = Store.find(params[:id])
    binding.pry
  end

end
