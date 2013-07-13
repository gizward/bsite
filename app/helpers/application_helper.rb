module ApplicationHelper
  include LoadLoggers
  include DefaultsHelper
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
#---- admin interface stuff
  
#--------------------------------------------------------------------------------------------------------------------------------

  def safe(str)
    return str.html_safe unless str.blank?
    return str
  end
  
  def menu_here(name)
    return 'here' if name.downcase == controller.controller_name
    return ''
  end
  
  def action_here(name)
    return 'here' if name.downcase == "#{controller.controller_name}/#{controller.action_name}"
    return ''
  end
  

#--------------------------------------------------------------------------------------------------------------------------------

  def get_segment
    s = AppSegment::ADMIN
    s = AppSegment::HOME   if controller.controller_name == 'home'
    s = AppSegment::BLOG   if controller.controller_name == 'blog'
    s = AppSegment::FORUM  if controller.controller_name == 'forum'
    s = AppSegment::STORE  if controller.controller_name == 'store'
    s = AppSegment::SCHOOL if controller.controller_name == 'school'
    s = AppSegment::AUTH   if %(sessions passwords registrations).include?(controller.controller_name)
    s = AppSegment::USER   if controller.controller_name == 'user'
    return s
  end

  def get_segments
    s = AppSegment::ADMIN_STUFF
    s = AppSegment::HOME_STUFF   if controller.controller_name == 'home'
    s = AppSegment::BLOG_STUFF   if controller.controller_name == 'blog'
    s = AppSegment::FORUM_STUFF  if controller.controller_name == 'forum'
    s = AppSegment::STORE_STUFF  if controller.controller_name == 'store'
    s = AppSegment::SCHOOL_STUFF if controller.controller_name == 'school'
    s = AppSegment::AUTH_STUFF   if %(sessions passwords registrations).include?(controller.controller_name)
    s = AppSegment::USER_STUFF   if controller.controller_name == 'user'
    return s
  end

#--------------------------------------------------------------------------------------------------------------------------------

  def buttons_divider(str=nil)
    s  = ''
    s += "&middot;&middot;&middot;"
    s += " #{str} " unless s.blank?
    return s.html_safe
  end
  
#--------------------------------------------------------------------------------------------------------------------------------

  def tabs_divider(str=nil)
    s  = ''
    s += "<b>&middot;&middot;&middot;</b>"
    s += " #{str} " unless s.blank?
    return s.html_safe
  end
  
  def tabs_here(options,name,show_when_empty=false)
    options = options[:show] if options && options[:show]
    s = ''
    s = 'here' if options && options[name]
    s = 'here' if options==nil && show_when_empty
    return s
  end

#--------------------------------------------------------------------------------------------------------------------------------

  def safe(s)
    return s if s.blank?
    return s.html_safe if s.class.name == 'String'
    return s
  end
  
  def clear
    return "<div class='clear'> </div>"
  end

#--------------------------------------------------------------------------------------------------------------------------------

  def view_title(obj,act)
    s = ''
    if act == :list
      s += "<h2><span class='low'>List: </span>#{obj.to_s}</h2>"
    elsif act == :new
      s += "<h2>Create New #{obj.class.name.titleize}</h2>"
    else
      s += "<h2><span class='low'>#{obj.short}: </span>#{obj.long}</h3>"
    end 
    return safe s
  end

  def sub_title(str=nil)
    str ||= controller.action_name.titleize 
    return safe "<h4 class='action'>#{str}</h4>"
  end
  
#--------------------------------------------------------------------------------------------------------------------------------

 def no_items_found
   return "No Items found!"
 end
 
 def empty(str='')
   return "<div class='empty'>- empty (#{str})-</div>".html_safe
 end
 
 def field_info(required=false,txt=nil)
   s  = ''
   if required
     s += "<span class='required'>required</span>" if required
     s += ', ' if required && !txt.blank?
     s += txt unless txt.blank?
     s  = "<span class='form_info'> &laquo; #{s}</span>" unless s.blank?
   end
   return s.html_safe
 end
 def required(show=false,txt=nil)
   s  = ''
   if required
     s += "<span class='required'>required</span>" if required
     s += ', ' if required && !txt.blank?
     s += txt unless txt.blank?
     s  = "<span class='form_info'> &laquo; #{s}</span>" unless s.blank?
   end
   return s.html_safe
 end


#--------------------------------------------------------------------------------------------------------------------------------

  def load_style(obj,field=nil)
    field ||= :p_styles
    return nil unless obj && obj.respond_to?(field) && !obj.send(field).blank?
    s = obj.send(field)
    log_style_object "#{obj.class.name[0].chr.downcase}.#{obj.title}"
    return safe s
  end

  def load_script(obj,field=nil)
    field ||= :p_scripts
    return nil unless obj && obj.respond_to?(field) && !obj.send(field).blank?
    s = obj.send(field)
    log_script_object "#{obj.class.name[0].chr.downcase}.#{obj.title}"
    return safe s
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def status_for(obj,field=:all)
    s = ''
    return s unless obj
    return s unless obj.respond_to?(:status_str)
    if field==:all
      s = obj.status_str
    end
    return s.html_safe
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def is_different?(str1,str2)
    s1 = str1 || ''
    s2 = str2 || ''
    return s1 != s2
  end

  def changed?(str1,str2)
    s = "<div class='status current'>current</div>"
    s = "<div class='status changed'>changed</div>" if is_different?(str1,str2)
    return s.html_safe
  end
  
  def obj_count(name)
    c = 0
    c = name.to_s.singularize.camelize.constantize.count
    return "<span class='low'>(#{c})</span>".html_safe
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
