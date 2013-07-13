class Parser
#=======================================================================================

  def self.parse(str)
    return '' unless str
    segment ||= 'home'
    s = str

    s = s.gsub('#USER_INFO#',Parser.put_user_info)
    s = s.gsub('#USER_ACTIONS#',Parser.put_user_actions)
    s = s.gsub('#USER_MENU#',Parser.put_user_menu)

    s = s.gsub('#STANDARD_FORM#',Parser.standard_form)
    s = s.gsub('#FORM#',Parser.put_form)
    s = s.gsub('#FORM_ERRORS#',Parser.put_form_errors)
    s = s.gsub('#FORM_ACTIONS#',Parser.put_form_actions)

    s = s.gsub('#DEVISE_ACTIONS#',Parser.put_devise_actions)

    s = s.gsub('#BLOG_TITLE#',Parser.put_blog_title)
    s = s.gsub('#BLOG_LIST#',Parser.put_blog_list)
    s = s.gsub('#BLOG_DETAILS#',Parser.put_blog_details)

    s = s.gsub('#COMMENT_LIST#',Parser.put_comment_list)

    return s
  end

#---------------------------------------------------------------------------------------
#---------------------------------------------------------------------------------------

 def self.put_user_info
   return "<div id='user_info' class='user_info'>...user_info...</div>"
 end
 def self.put_user_actions
   return "<div id='user_actions' class='user_actions'>...user_actions...</div>"
 end
 def self.put_user_menu
   return "<div id='user_menu' class='user_menu'>...user_menu...</div>"
 end

#---------------------------------------------------------------------------------------

 def self.standard_form
   s  = "<div class='form_content'><div class='form_content_inner'>"
   s += Parser.put_form_errors 
   s += Parser.put_form 
   s += Parser.put_form_actions
   s += "</div></div>"
   return s
 end
 def self.put_form
   return "<div id='form_entry' class='form_entry'>...form...</div>"
 end
 def self.put_form_errors
   return "<div id='form_errors' class='form_errors'>...form-errors...</div>"
 end
 def self.put_form_actions
   return "<div id='form_actions' class='form_actions'>...form-actions...</div>"
 end

#---------------------------------------------------------------------------------------

 def self.put_devise_actions
   return "<div id='devise_actions' class='devise_actions'>...devise-actions...</div>"
 end

#---------------------------------------------------------------------------------------

 def self.put_blog_title
   return "<div id='blog_title'>...blog-title...</div>"
 end
 def self.put_blog_list
   return "<div id='blog_list'>...blogs...</div>"
 end
 def self.put_blog_details
   return "<div id='blog_details'>...blog...</div>"
 end
 def self.put_comment_list
   return "<div id='comment_list'>...comments...</div>"
 end

#=======================================================================================
end