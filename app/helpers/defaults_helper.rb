module DefaultsHelper
#--------------------------------------------------------------------------------------------------------------------------------

  def version
    return "00.01"
  end

#--------------------------------------------------------------------------------------------------------------------------------

  def default
    @default ||= AppSetting.first
    #@default ||= AppSetting.create
  end

  def default_show(field)
    field_name = "#{@segment.downcase}_show_#{field}".to_sym
    b = false
    b = @default.send(field_name) if @default && @default.respond_to?(field_name)
    return b
  end

  def show_devbar
    b = false
    b = @default.send(:global_show_devbar) if @default && @default.respond_to?(:global_show_devbar)
    return b
  end

  def show_admbar
    b = false
    b = @default.send(:global_show_admbar) if @default && @default.respond_to?(:global_show_admbar)
    return b
  end

  def default_get(field)
    field_name = "#{@segment.downcase}_show_#{field}".to_sym
    b = nil
    b = @default.send(field_name) if @default && @default.respond_to?(field_name)
    return b
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def meta_title
    return "Mike's Site"
  end
  
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end