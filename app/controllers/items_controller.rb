class ItemsController < ApplicationController

  def new
    # @item = Item.new
    
  end

  def create

    @list = List.find(params[:list_id])

    @item = Item.new(item_params)
    @item.list = @list # after initializiation, before saving 

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to current_user
    else
      flash[:error] = "There was a problem saving your item."
      redirect_to current_user
    end
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end

 end
