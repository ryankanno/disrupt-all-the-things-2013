class ItemsController < ApplicationController

  def index
    @items = Item.nearby_to(params[:latitude], 
                            params[:longitude],
                            params[:distance] || 200000)
    respond_with @items
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

    if @item.save
      render json: @item
    else
      render(json: {}, status: :internal_server_error)
    end
  end

  def show
    @item = Item.find(params[:id])
    render :json => @item
  end

end
