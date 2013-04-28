class ItemsController < ApplicationController

  def index
    @items = Item.nearby_to(params[:latitude], 
                            params[:longitude],
                            params[:distance] || 200000)
    render json: @items
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
    item_status = UserItemStatus.where(item_id: params[:id], user_id: current_user.id).first
    unless item_status
      item_status = UserItemStatus.new(:item_id => params[:id])
      current_user.item_statuses << item_status
    end

    render :json => item_status, root: false
  end
end
