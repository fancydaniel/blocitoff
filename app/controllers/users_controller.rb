class UsersController < ApplicationController

  def show
    return redirect_to new_list_path unless current_user.list
    @list = current_user.list
    @items = @list.items 
    @new_item = Item.new
  end

end
  