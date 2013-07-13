module CommonStuff
#=======================================================================================
  #--- for auto system objects
  
  def class_name
    return self.class.name.titleize
  end
  def table_name
    return self.class.name.tableize
  end
  
  def class_identifier
    return "#{self.class.name.titleize} #{self.id}" if self.id
    return "New #{self.class.name.titleize}"
  end

  def id_str
    return "#{self.class.name.titleize} ##{self.id}"
  end
  
  def short_str
    return self.class.name.titleize
  end
  
  def long_str
    return self.code  if self.respond_to?(:code) && !self.code.blank?
    return self.name  if self.respond_to?(:name) && !self.name.blank?
    return self.title if self.respond_to?(:title) && !self.title.blank?
    return nil
  end
  
  def style
    "#{self.class.name.downcase} #{self.to_s.downcase.underscore}"
  end
  
  def identifier
    return self.code  if self.respond_to?(:code) && !self.code.blank?
    return self.name  if self.respond_to?(:name) && !self.name.blank?
    return self.title if self.respond_to?(:title) && !self.title.blank?
    return self.id_str
  end
  
  def get_segment
    s = ''
    s = self.app_segment.name+' ' if self.respond_to?(:app_segment)
    return s
  end
  
#=======================================================================================

  def to_s
    return self.code  unless self.code.blank?
    return self.name  unless self.name.blank?
    return self.title unless self.title.blank?
    return self.id_str
  end

  def short
    return self.short_str || self.id_str
    return self.id_str
  end
  
  def long
    self.long_str
  end
  
#=======================================================================================

  def published?(field)
    s = "<span class='alert'>???</span>"
    if self.respond_to?(field) && self.respond_to?("r_#{field.to_s}".to_sym)
      if self.send(field) == self.send("r_#{field.to_s}".to_sym)
        s = "<span class='status ok'>ok</span>"
      else
        s = "<span class='status updated'>updated</span>"
      end
    end
    return s
  end
  
  def activate
    if self.respond_to?(:active)
      self.active = !self.active
      self.save!
    end
  end

#=======================================================================================
end