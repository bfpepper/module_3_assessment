class Api::V1::ItemsController < ApplicationController

  def index
    render json: Item.all
  end

  def show
    render json: Item.find(params[:id])
  end

  def create
    item = Item.create(item_params)
    if item.save
      render json: item, status: 201
    else
      render json: {error: "Make sure you sent the correct info"}, status: 401
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    render json: {message: "#{item.name} successfully deleted!"}, status: 204
  end

  private

  def item_params
    params.permit(:name, :description, :image_url)
  end

end
