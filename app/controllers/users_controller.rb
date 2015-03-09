class UsersController < ApplicationController

  def show
    return redirect_to new_list_path unless current_user 
    @user = User.find(params[:id])
    @list = @user.list
    @items = @list.items
  end

end
