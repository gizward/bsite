class Snipplet < ActiveRecord::Base
  versioned :dependent => :tracking
#--------------------------------------------------------------------------------------------------------------------------------

  include CommonStuff
  include Publishable
  
  STD_SNIPPLETS = %w(html_head userbar overhead header nav1 nav2 menu1 menu2 footer underfoot credits html_foot)

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  validates_presence_of   :code
  validates_uniqueness_of :code, :scope => :app_segment_id
  validates_presence_of   :app_segment_id
  
  #--- associations
  belongs_to :app_segment
  
  scope :ns_home,       :conditions => { :app_segment_id => AppSegment::HOME_STUFF }
  scope :ns_blog,       :conditions => { :app_segment_id => AppSegment::BLOG_STUFF }
  scope :ns_ecomm,      :conditions => { :app_segment_id => AppSegment::STORE_STUFF }
  scope :ns_devise,     :conditions => { :app_segment_id => AppSegment::AUTH_STUFF }
  scope :ns_admin,      :conditions => { :app_segment_id => AppSegment::ADMIN_STUFF }
  scope :ns_active,     :conditions => { :active => true }
  scope :ns_published,  :conditions => { :published => true }
  
  #--- callbacks
  before_save :before_save_tasks
  
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
