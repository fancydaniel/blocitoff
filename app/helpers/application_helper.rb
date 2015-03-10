module ApplicationHelper

  def list_links
    if current_user.list
     link_to "My List", current_user 
    else
      link_to "New List", new_list_path
    end
  end
end
