class DocumentAttachment < ActiveRecord::Base
  include CommonStuff
#=======================================================================================

  #--- associations
  belongs_to :document
  has_attached_file :attached_document,
    :styles => {}

  #--- callbacks
  before_create :before_create_tasks

  #--- named scopes
  scope :ns_is_active, :conditions => {:active=>true}
  scope :ns_order_by_id_desc, :order => "id DESC"

#=======================================================================================
private

  def before_create_tasks
    unless self.name && self.name.length>0
      self.name = self.attached_document_file_name
    end
  end

#=======================================================================================
end
