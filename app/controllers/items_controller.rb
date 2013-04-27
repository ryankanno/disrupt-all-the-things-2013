class ItemsController < ApplicationController

  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item].except(:latlon))
    @item.save
  end

  def show
    @item = Item.find(params[:id])
    render :json => @item
  end

end
