module ApplicationHelper
  def smartnav
    links = ''
    if @current_user.try(:is_admin)
      links += "<a>" + link_to('View users', users_path) + "</a>"
    end

    if @current_user.present?
     links += "<ul><a>"
     links += link_to('', user_path(@current_user), :class => "glyphicon glyphicon-user")
     links += "</a></ul>"

     links += "<ul><a>"
     links += link_to('', login_path, :class => "glyphicon glyphicon-off", :data => {:method => :delete, :confirm => 'Really logout?'})
     links += "</a></ul>"
   else
    links += "<ul><a>"
    links += link_to(' Sign up', new_user_path)
    links += "</a></ul>"
  end
  
  end

  def user_nav
     links = ''
     links += "<ul><a>"
     links += link_to('Delete Account', user_path(@current_user), :data => {:confirm => "Are you sure you want to delete #{@current_user.username} from the database?"}, :method => :delete)
     links += "</a></ul>"
  end
end
