module ApplicationHelper
  def smartnav
    links = ''
    if @current_user.try(:is_admin)
      links += "<a>" + link_to('View users', users_path) + "</a>"
    end

    if @current_user.present?
     links += "<a>"
     links += link_to('Account', user_path(@current_user))
     links += "</a>"

     links += "<a>"
     links += link_to('Logout', login_path, :data => {:method => :delete, :confirm => 'Really logout?'})
     links += "</a>"
   else
    links += "<a>#{ link_to('Sign up', new_user_path) }</a>"
    # links += "<a>#{ link_to('Sign in', login_path) }</a>"
  end
  
  end

  def user_nav
     links = ''
     links += "<p>"
     links += link_to('Delete Account', user_path(@current_user), :data => {:confirm => "Are you sure you want to delete #{@current_user.username} from the database?"}, :method => :delete)
     links += "</p>"
  end
end
