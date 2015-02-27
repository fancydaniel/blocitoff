class ItemsController < ApplicationController

  def create
    @item = Item.find(params[:id])

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to show_path
    else
      flash[:error] = "There was a problem saving your item."
      render :new
    end
  end

 end
