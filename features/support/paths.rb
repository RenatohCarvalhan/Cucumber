def path_to(page_name)
  case page_name
  
  when /the homepage/
    root_path
  when /the list of articles/
    articles_path

  when /the edit article/
    edit_article_path

  when /the list users/
    users_path 

  when / show user /
    show_user_path 
  
  when /create account/
    new_user_registration_path

  when /login/
    user_session_path

  when /edit account/
    edit_user_registration_path
  # Add more page name => path mappings here
  
  else
    raise "Can't find mapping from \"#{page_name}\" to a path."
  end
end