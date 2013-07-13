class VideoAttachment < ActiveRecord::Base
  include CommonStuff
#=======================================================================================

  #--- associations
  belongs_to :video
  has_attached_file :attached_video, 
    :styles => {:thumb=>"100x60"}

  #--- callbacks
  before_create :before_create_tasks
  after_create  :after_create_tasks

  #--- named scopes
  scope :ns_is_active, :conditions => {:active=>true}
  scope :ns_order_by_id_desc, :order => "id DESC"

#=======================================================================================

  def url(size=:original)
    self.attached_video.url(size)
  end

  def get_url
    return url
  end

#=======================================================================================

  def disable_me(usr=nil)
    return false unless self.active
    self.active = false
    self.save(:validate=>false)
    return true
  end

#=======================================================================================
private

  def before_create_tasks
    unless self.name && self.name.length>0
      self.name = self.attached_image_file_name
    end
  end
  
  def after_create_tasks
    self.image.disable_all_others(self)
  end

#=======================================================================================
end
