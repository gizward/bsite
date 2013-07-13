# Manages filtering conditions for displaying item lists
# Sets condition for the SQL search
class RForm
#==============================================================================================

  def self.r_safe(str)
    return ''            if str.blank?
    return str.html_safe if str.class.name=='String'
    return str
  end
    

#==============================================================================================
#==============================================================================================
# given array of strings assemble a select field which returns the
# index of selected string from the array

  def self.select_int_from_str_array(obj,field,arr,options={})
    options[:class] ||= 'normal'
    s  = ''
    select_id    = "#{obj.class_name.underscore}_#{field.to_s}"
    select_name  = "#{obj.class_name.underscore}[#{field.to_s}]"
    select_class = options[:class]
    s += "<select id='#{select_id}' name='#{select_name}' class='#{select_class}'>"
    arr.each do |a| 
      i = arr.index(a)
      selected = obj.send(field) == i
      s += "<option value='#{i}' #{selected ? 'selected' : ''}>#{a}</option>"
    end
    s += "</select>"
    return s.html_safe
  end


#==============================================================================================
#==============================================================================================
end