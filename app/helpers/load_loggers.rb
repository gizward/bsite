module LoadLoggers
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
  
  #---------------------------------------- layout
  def log_layout_view(name)
    name = '[??]'     if name.blank?
    @view_sequence    << name
    @layout_views     << name
  end
  def log_layout_partial(name)
    name = '[??]'     if name.blank?
    @view_sequence    << "- #{name}"
    @layout_partials  << "- #{name}"
  end
  def log_layout_loader(name)
    name = '[??]'     if name.blank?
    @view_sequence    << "+ #{name}"
    @layout_loaders   << "+ #{name}"
  end

  #---------------------------------------- object
  def log_object_view(name)
    name = '[??]'     if name.blank?
    @view_sequence    << name
    @object_views     << name
  end
  def log_object_partial(name)
    name = '[??]'     if name.blank?
    @view_sequence    << "- #{name}"
    @object_partials  << "- #{name}"
  end
  
  #---------------------------------------- shared
  def log_shared_view(name)
    name = '[??]'     if name.blank?
    @view_sequence    << name
    @object_views     << name
  end
  def log_shared_partial(name)
    name = '[??]'     if name.blank?
    @view_sequence    << "- #{name}"
    @shared_partials  << "- #{name}"
  end

  #----------------------------------------------------
  #---------------------------------------- todo
  def log_todo(name,block=:local)
    name = '[??]'     if name.blank?
    if block == :local
      @todos << name
      return "<span class='todo'><b>ToDo:</b> #{name}</span>".html_safe
    else
      @todos_global << name
    end
    return nil
  end

  #----------------------------------------------------
  #---------------------------------------- errors
  def log_error(name)
    name = '[ERROR]'  if name.blank?
    @errors           << name
    return "<span class='error'><b>ERROR:</b> #{name}</span>".html_safe
  end

  #----------------------------------------------------
  #---------------------------------------- warning
  def log_warning(name)
    name = '[WARNING]' if name.blank?
    @warnings          << name
    return "<span class='warning'><b>WARNING:</b> #{name}</span>".html_safe
  end

  #----------------------------------------------------
  #---------------------------------------- styles
  def log_style_object(name)
    name = '?style?'  if name.blank?
    @style_objects    << "+ #{name}"
    @object_sequence  << "+ #{name}"
  end
  #---------------------------------------- scripts
  def log_script_object(name)
    name = '?script?' if name.blank?
    @script_objects   << "* #{name}"
    @object_sequence  << "* #{name}"
  end
  #---------------------------------------- pages
  def log_page_object(name)
    name = '?page?'   if name.blank?
    @page_objects     << "#{name}"
    @object_sequence  << "#{name}"
  end
  #---------------------------------------- snipplets
  def log_snipplet_object(name)
    name = '?snipplet?' if name.blank?
    @snipplet_objects << "- #{name}"
    @object_sequence  << "- #{name}"
  end
    
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
