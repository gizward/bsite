class BlogCommentsController < ApplicationController
#--------------------------------------------------------------------------------------------------------------------------------

  before_filter :authenticate_user!
  
  include RController
  include RControllerExtrasLite
  
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def local_setup
    @live_data = true
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
