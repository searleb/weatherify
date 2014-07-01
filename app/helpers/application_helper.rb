module ApplicationHelper
  def smartnav
    links = ''
    if @current_user.try(:is_admin)
      links += "<li>" + link_to('View users', users_path) + "</li>"
    end

    if @current_user.present?
     links += "<li>"
     links += link_to('Account', user_path(@current_user))
     links += "</li>"

     links += "<li>"
     links += link_to('Logout', login_path, :data => {:method => :delete, :confirm => 'Really logout?'})
     links += "</li>"
   else
    links += "<li>#{ link_to('Sign up', new_user_path) }</li>"
    # links += "<li>#{ link_to('Sign in', login_path) }</li>"
  end
  
  end

  def user_nav
     links = ''
     # links += "<li>"
     # links += link_to('Edit Account', edit_user_path(@current_user))
     # links += "</li>"
     links += "<li>"
     links += link_to('Delete Account', user_path(@current_user), :data => {:confirm => "Are you sure you want to delete #{@current_user.username} from the database?"}, :method => :delete)
     links += "</li>"
  end
end