class UsersController < ApplicationController

  def show
    return redirect_to new_list_path unless current_user 
    @list = current_user.list
    @items = @list.items 
  end

end
