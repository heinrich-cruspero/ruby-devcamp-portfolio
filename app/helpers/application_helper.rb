module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      link_to 'Logout', destroy_user_session_path(), method: :delete
    else
      (link_to 'Logins', new_user_session_path()) +
        "<br>".html_safe +
        (link_to 'Signup', new_user_registration_path())
    end
  end

  def source_helper
    if session[:source]
      greeting = "Thank for visting me from  #{session[:source]}"
      content_tag(:div, greeting, class: "greeting-div")
    end
  end
end
