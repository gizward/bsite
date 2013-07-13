class HomeController < ApplicationController
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
  
  layout "home"
  
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def index
    @page_here  = 'index'
    @page_class = 'index'
    @code = 'index'
    @page = Page.first(:conditions=>{:app_segment_id=>AppSegment::HOME_STUFF,:published=>true,:active=>true,:name=>@code})
    
  end

#--------------------------------------------------------------------------------------------------------------------------------

  def show
    @page_here  = params[:id].to_s
    @code = params[:id].to_s
    @page = Page.first(:conditions=>{:app_segment_id=>AppSegment::HOME_STUFF,:published=>true,:active=>true,:name=>@code})
    
  end
  
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def contact
    @object = Email.new

    @object.security_answer = ''
    @object.security_question_id = rand(RCaptcha::QUESTIONS.size)
    @security_question = RCaptcha::QUESTIONS[@object.security_question_id.to_i]

    if current_user
      @object.user_id    = current_user.id
      @object.user_name  = current_user.name
      @object.user_email = current_user.email
    end
    @page = Page.first(:conditions=>{:app_segment_id=>AppSegment::HOME_STUFF,:published=>true,:active=>true,:name=>'contact'})
  end
  
  def contact_submit
    @object = Email.new(params[:email])
    if @object.save
      redirect_to("/home/contact_thankyou")
    else
      if @object.security_answer_invalid
        @object.security_answer = ''
        @object.security_question_id = rand(RCaptcha::QUESTIONS.size)
      end
      @security_question = RCaptcha::QUESTIONS[@object.security_question_id.to_i]
      @page = Page.first(:conditions=>{:app_segment_id=>AppSegment::HOME_STUFF,:published=>true,:active=>true,:name=>'contact'})
      render :action => :contact
    end  
  end
  
  def contact_thankyou
    @page = Page.first(:conditions=>{:app_segment_id=>AppSegment::HOME_STUFF,:published=>true,:active=>true,:name=>'contact_thankyou'})
  end
  
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
