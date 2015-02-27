class UsersController < ApplicationController

  def show
    return redirect_to new_list_path unless current_user
    @user = User.find(params[:id])
    # @list = User.visible_to(current_user).where(user_id: @user.id)
    @items = @user.items
  end

end
