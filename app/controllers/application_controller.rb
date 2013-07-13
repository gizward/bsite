class ApplicationController < ActionController::Base
#--------------------------------------------------------------------------------------------------------------------------------

#  layout :layout_by_resource

  protect_from_forgery
  before_filter :load_settings
  before_filter :global_setup
  before_filter :load_snipplets

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  helper_method :is_admin?, :is_developer?, :development?, :staging?, :production?
  
  def is_visitor?
    return false unless current_user
    return current_user.is_visitor?
  end
  def is_admin?
    return false unless current_user
    return current_user.is_admin?
  end
  def is_developer?
    return false unless current_user
    return current_user.is_developer?
  end
  
  def development?
    return Rails.env == 'development'
  end
  def staging?
    return Rails.env == 'staging'
  end
  def production?
    return Rails.env == 'production'
  end
  
#--------------------------------------------------------------------------------------------------------------------------------

  helper_method :use_wysiwyg?
  
  def use_wysiwyg?
    false
  end
  
#--------------------------------------------------------------------------------------------------------------------------------

  def success(msg)
    msg
  end
  def failure(msg)
    msg
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def load_settings
    @default ||= AppSetting.first
  end

#--------------------------------------------------------------------------------------------------------------------------------

  HOME_CONTROLLERS   = %w(home)
  BLOG_CONTROLLERS   = %w(blog)
  FORUM_CONTROLLERS  = %w(forum)
  STORE_CONTROLLERS  = %w(store)
  SCHOOL_CONTROLLERS = %w(school)
  AUTH_CONTROLLERS   = %w(sessions registrations passwords)
  USER_CONTROLLERS   = %w(user)

  def global_setup
    
    @filter             = RFilter.new
    @page_here          = controller_name
    @current_controller = controller_name
    @current_action     = action_name
    @devise_action      = AUTH_CONTROLLERS.include?(@current_controller)
    
    @view_sequence    = []
    @layout_views     = []
    @layout_loaders   = []
    @layout_partials  = []
    @object_views     = []
    @object_partials  = []
    @shared_views     = []
    @shared_partials  = []
        
    @object_sequence  = []
    @style_objects    = []
    @script_objects   = []
    @page_objects     = []
    @snipplet_objects = []

    @std_snipplets        = {}
    @additional_snipplets = []

    @todos            = []
    @todos_global     = []
    @errors           = []
    @warnings         = []
    
    @segment = 'ADMIN'
    @segment = 'HOME'   if HOME_CONTROLLERS.include?(@current_controller)
    @segment = 'BLOG'   if BLOG_CONTROLLERS.include?(@current_controller)
    @segment = 'FORUM'  if FORUM_CONTROLLERS.include?(@current_controller)
    @segment = 'STORE'  if STORE_CONTROLLERS.include?(@current_controller)
    @segment = 'SCHOOL' if SCHOOL_CONTROLLERS.include?(@current_controller)
    @segment = 'AUTH'   if AUTH_CONTROLLERS.include?(@current_controller)
    @segment = 'USER'   if USER_CONTROLLERS.include?(@current_controller)
    
    local_setup
    
  end
  
  def local_setup
  end
  
#--------------------------------------------------------------------------------------------------------------------------------

  def load_snipplets
    segments = AppSegment::ADMIN_STUFF
    segments = AppSegment::HOME_STUFF   if @segment == 'HOME'
    segments = AppSegment::BLOG_STUFF   if @segment == 'BLOG'
    segments = AppSegment::FORUM_STUFF  if @segment == 'FORUM'
    segments = AppSegment::STORE_STUFF  if @segment == 'STORE'
    segments = AppSegment::SCHOOL_STUFF if @segment == 'SCHOOL'
    segments = AppSegment::AUTH_STUFF   if @segment == 'AUTH'
    segments = AppSegment::USER_STUFF   if @segment == 'USER'
    
    
    snipplet_names = Snipplet::STD_SNIPPLETS
    snipplets = Snipplet.where(:code=>snipplet_names,:active=>true,:published=>true,:app_segment_id=>segments)
    @ssnipplets = snipplets.to_a
    
    snipplet_names.each do |name|
      arr = snipplets.select{|x| x if x.code==name}
      snipplet = (arr && arr.size>0) ? arr.last : nil
      if snipplet
        cont = 'empty'
        cont = 'ok' unless snipplet.p_content.blank?
        #log_snipplet_object "#{snipplet.title} <i>(#{cont})</i>"
      end
      @std_snipplets[name.to_sym] = snipplet
    end

  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def after_sign_in_path_for(resource)
    #return request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    path = @default ? @default.after_login_path : '/home'
    return path
  end

  def after_sign_out_path_for(resource_or_scope)
    path = '/home'
    return path
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
protected

#  ADMIN_CONTROLLERS = %w(app_settings app_segments pages snipplets css_styles js_scripts blogs tags products categories users app_events app_errors tools)
#
#  def layout_by_resource
#    if ADMIN_CONTROLLERS.include?(controller_name)
#      return 'application'
#    else
#      return "website"
#    end
#  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
