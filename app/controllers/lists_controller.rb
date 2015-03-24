class ListsController < ApplicationController
  before_action :authenticate_user!

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    
    if @list.save
      flash[:notice] = "List was saved."
      redirect_to current_user
    else
      flash[:error] = "There was a problem saving your list."
      redirect_to user_path(current_user)
    end
  end


  def destroy
    @list = List.find(params[:id])

    if @list.destroy
      redirect_to new_list_path
    else
      redirect_to current_user
    end
  end

  def edit

  end

  private
  def list_params
    params.require(:list).permit(:title)
  end

end
