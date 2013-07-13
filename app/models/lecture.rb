class Lecture < ActiveRecord::Base
  versioned :dependent => :tracking
#--------------------------------------------------------------------------------------------------------------------------------

  include CommonStuff
  include Publishable

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  #--- associations
  belongs_to :course
  has_one    :quiz
  
  #--- validations
  validates_presence_of   :code
  validates_uniqueness_of :code, :scope => :course_id
  validates_presence_of   :course_id
  
  #--- scopes
  scope :ns_active,     :conditions => { :active => true }
  scope :ns_published,  :conditions => { :published => true }
  
  #--- callbacks
  before_save :before_save_tasks
  
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
