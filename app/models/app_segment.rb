class AppSegment < ActiveRecord::Base
  include CommonStuff
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  #--- constants
  GLOBAL    = 1
  WEBSITE   = 2
  HOME      = 3
  BLOG      = 4
  FORUM     = 5
  STORE     = 6
  SCHOOL    = 7
  AUTH      = 8
  USER      = 9
  ADMIN     = 10
  OVERRIDE  = 11

  HOME_STUFF      = [GLOBAL,WEBSITE,HOME,OVERRIDE]
  BLOG_STUFF      = [GLOBAL,WEBSITE,BLOG,OVERRIDE]
  FORUM_STUFF     = [GLOBAL,WEBSITE,FORUM,OVERRIDE]
  STORE_STUFF     = [GLOBAL,WEBSITE,STORE,OVERRIDE]
  SCHOOL_STUFF    = [GLOBAL,WEBSITE,SCHOOL,OVERRIDE]
  AUTH_STUFF      = [GLOBAL,WEBSITE,AUTH,OVERRIDE]
  USER_STUFF      = [GLOBAL,WEBSITE,USER,OVERRIDE]
  ADMIN_STUFF     = [GLOBAL,ADMIN,OVERRIDE]

#--------------------------------------------------------------------------------------------------------------------------------

  def to_s
    self.name
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
