class Product < ActiveRecord::Base
  versioned :dependent => :tracking
#--------------------------------------------------------------------------------------------------------------------------------

  include CommonStuff
  include Publishable

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  #--- associations
  has_many   :product_categories
  has_many   :categories, :through => :product_categories
  has_many   :comments,   :as => :owner, :order=>'id DESC', :conditions=>{:active=>true}

  #--- validations
  validates_presence_of   :name
  validates_uniqueness_of :name
  
  #--- scopes
  scope :ns_home,       :conditions => { :app_segment_id => AppSegment::HOME_STUFF }
  scope :ns_blog,       :conditions => { :app_segment_id => AppSegment::BLOG_STUFF }
  scope :ns_ecomm,      :conditions => { :app_segment_id => AppSegment::STORE_STUFF }
  scope :ns_devise,     :conditions => { :app_segment_id => AppSegment::AUTH_STUFF }
  scope :ns_admin,      :conditions => { :app_segment_id => AppSegment::ADMIN_STUFF }
  scope :ns_active,     :conditions => { :active => true }
  scope :ns_published,  :conditions => { :published => true }
  
  scope :ns_for, lambda { |category| where(:category_id => category) }
  
  #--- callbacks
  after_save :after_save_tasks
  
  #--- local attributes
  attr_accessor :cats_str

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def after_save_tasks
    associate_cats
  end
  
#--------------------------------------------------------------------------------------------------------------------------------

  def get_cats_str
    s = ''
    arr = []
    arr = self.categories.to_a if self.categories && self.categories.size>0
    s = arr.map{|x| x.name}.join(', ') if arr && arr.size>0
    return s
  end

  def associate_cats
    
    #--- get old cats array
    old_cats = []
    old_cats = self.categories.to_a if self.categories && self.categories.size>0
    old_cats.uniq!
    
    #--- parse cats_str
    arr = []
    arr = self.cats_str.split(',') if self.cats_str
    
    #--- get new cats array
    new_cats = []
    if arr.size>0
      arr.each do |a|
        c = Category.first(:conditions=>{:name=>a.downcase.strip})
        c = Category.create(:name=>a.downcase.strip) unless c
        new_cats << c
      end # do arr
    end # if arr
    new_cats.uniq!
    
    #--- calculate cats to remove
    rem_cats = old_cats - new_cats
    rem_cats.uniq!
    
    #--- calculate cats to add
    add_cats = new_cats - old_cats
    add_cats.uniq!
    
    #--- add bindings
    add_cats.each do |c|
      ProductCategory.create(:category_id=>c.id,:product_id=>self.id)
    end # do add_cats

    #--- remove bindings
    rem_cats.each do |c|
      old = ProductCategory.first(:conditions=>{:category_id=>c.id,:product_id=>self.id})
      ProductCategory.delete(old) if old
    end # do rem_cats

  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
