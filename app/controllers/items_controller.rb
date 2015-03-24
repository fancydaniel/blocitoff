class ItemsController < ApplicationController

  respond_to :html, :js
  helper_method :days_left

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

  def destroy
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])
    # authorize @item

    if @item.destroy
      flash[:notice] = "Item was removed."
      # redirect_to current_user
    else
      flash[:error] = "Item could not be deleted."      
    end

    # respond_to do |format|
    #   # format.html
    #   format.js
    # end

    respond_with(@item) do |format|
      format.html { redirect_to [@list, @list.items] }
      format.js
    end
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end

 end
