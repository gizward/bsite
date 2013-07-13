class Blog < ActiveRecord::Base
  versioned :dependent => :tracking
#--------------------------------------------------------------------------------------------------------------------------------

  include CommonStuff
  include Publishable

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  #--- associations
  has_many :blog_tags
  has_many :tags, :through => :blog_tags
  has_many :comments, :as => :owner, :order=>'id DESC', :conditions=>{:active=>true}
  
  #--- validations
  validates_presence_of   :title
  validates_uniqueness_of :title

  #--- callbacks
  after_save :after_save_tasks
  
  #--- local attributes
  attr_accessor :tags_str

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def after_save_tasks
    associate_tags
  end
  
#--------------------------------------------------------------------------------------------------------------------------------

  def get_tags_str
    s = ''
    arr = []
    arr = self.tags.to_a if self.tags
    s = arr.map{|x| x.name}.join(', ') if arr && arr.size>0
    return s
  end

  protected 
  def associate_tags
    
    #--- get old tags array
    old_tags = []
    old_tags = self.tags.to_a if self.tags && self.tags.size>0
    old_tags.uniq!
    
    #--- parse tags_str
    arr = []
    arr = self.tags_str.split(',') if self.tags_str
    
    #--- get new tags array
    new_tags = []
    if arr.size>0
      arr.each do |a|
        t = Tag.first(:conditions=>{:name=>a.downcase.strip})
        t = Tag.create(:name=>a.downcase.strip) unless t
        new_tags << t
      end # do arr
    end # if arr
    new_tags.uniq!
    
    #--- calculate tags to remove
    rem_tags = old_tags - new_tags
    rem_tags.uniq!
    
    #--- calculate tags to add
    add_tags = new_tags - old_tags
    add_tags.uniq!
    
    #--- add bindings
    add_tags.each do |t|
      BlogTag.create(:tag_id=>t.id,:blog_id=>self.id)
    end # do add_tags

    #--- remove bindings
    rem_tags.each do |t|
      old = BlogTag.first(:conditions=>{:tag_id=>t.id,:blog_id=>self.id})
      BlogTag.delete(old) if old
    end # do rem_tags

  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
