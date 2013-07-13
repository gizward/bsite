class SchoolController < ApplicationController
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
  
  layout "school"
  
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def index
    @objects = Course.all(:conditions=>{:published=>true,:active=>true})
    @page    = Page.first(:conditions=>{:published=>true,:active=>true,:app_segment_id=>AppSegment::SCHOOL,:code=>'index'})
  end

#--------------------------------------------------------------------------------------------------------------------------------

  def show
    @id       = params[:id].to_s
    @object   = Course.first(:conditions=>{:published=>true,:active=>true,:id=>@id})
    @lectures = @object.lectures || []
    @page     = Page.first(:conditions=>{:published=>true,:active=>true,:app_segment_id=>AppSegment::SCHOOL,:code=>'course'})
  end
  
  def lecture
    @id     = params[:id].to_s
    @object = Lecture.first(:conditions=>{:published=>true,:active=>true,:id=>@id})
    @course = @object.course
    @page   = Page.first(:conditions=>{:published=>true,:active=>true,:app_segment_id=>AppSegment::SCHOOL,:code=>'lecture'})
  end
  
#--------------------------------------------------------------------------------------------------------------------------------

  def quiz
    @id       = params[:id]
    @object   = Quiz.first(:conditions=>{:published=>true,:active=>true,:id=>@id})
    if @object
      @lecture = @object.lecture
      @course  = @lecture.course
    end
    @page     = Page.first(:conditions=>{:published=>true,:active=>true,:app_segment_id=>AppSegment::SCHOOL,:code=>'enroll'})
  end
  
  def quiz_submit
  end
  
  def quiz_thanks
    @page = Page.first(:conditions=>{:published=>true,:active=>true,:app_segment_id=>AppSegment::SCHOOL,:code=>'enroll_thanks'})
  end

#--------------------------------------------------------------------------------------------------------------------------------

  def enroll
    @id     = params[:id]
    @course = Course.first(:conditions=>{:published=>true,:active=>true,:id=>@id})
    if @course
      @object = Enrollment.new

      @object.security_answer = ''
      @object.security_question_id = rand(RCaptcha::QUESTIONS.size)
      @security_question = RCaptcha::QUESTIONS[@object.security_question_id.to_i]

      if current_user
        @object.course_id  = @course.id
        @object.creator_id = current_user.id
        @object.user_id    = current_user.id
        @object.user_name  = current_user.name
        @object.user_email = current_user.email
        @object.reference_email = current_user.email
      end
    end
    @page   = Page.first(:conditions=>{:published=>true,:active=>true,:app_segment_id=>AppSegment::SCHOOL,:code=>'enroll'})
  end
  
  def enroll_submit
    @object = Enrollment.new(params[:enrollment])
    if @object.save
      redirect_to("/school/enroll_thankyou")
    else
      if @object.security_answer_invalid
        @object.security_answer = ''
        @object.security_question_id = rand(RCaptcha::QUESTIONS.size)
      end
      @security_question = RCaptcha::QUESTIONS[@object.security_question_id.to_i]
      @course = Course.first(:conditions=>{:published=>true,:active=>true,:id=>params[:id]})
      @page   = Page.first(:conditions=>{:app_segment_id=>AppSegment::HOME_STUFF,:published=>true,:active=>true,:name=>'enroll'})
      render :action => :enroll
    end  
  end
  
  def enroll_thanks
    @course = Course.first(:conditions=>{:published=>true,:active=>true,:id=>params[:id]})
    @page = Page.first(:conditions=>{:published=>true,:active=>true,:app_segment_id=>AppSegment::SCHOOL,:code=>'enroll_thanks'})
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
