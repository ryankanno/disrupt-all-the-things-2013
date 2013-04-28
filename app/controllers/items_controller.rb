class ItemsController < ApplicationController

  def index
    @items = Item.nearby_to(params[:latitude], 
                            params[:longitude],
                            params[:distance] || 200000)
    render :json => @items
  end

  def new
    @item = Item.new
  end

  def create
    factory = Item.rgeo_factory_for_column(:lonlat)
    @item = Item.new(params[:item].except(:latlon))
    @item.lonlat = factory.point(
      params[:item][:latlon][:longitude],
      params[:item][:latlon][:latitude]) 
    @item.save
  end

  def show
    @item = Item.find(params[:id])
    render :json => @item
  end

end
