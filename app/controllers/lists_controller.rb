class ListsController < ApplicationController

  before_action :authenticate_user!


  # def index
  #   @lists = List.all  # Removed per Blocitoff instructions
  # end

  def show
    return redirect_to new_list_path unless current_user.list
    @list = current_user.list
    # @lists = List.find(params[:id]) <-- Possible idea for pulling multiple lists
  end

  def new

  end

  def edit
  end
end
