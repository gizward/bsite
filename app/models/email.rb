class Email < ActiveRecord::Base
#--------------------------------------------------------------------------------------------------------------------------------

  include CommonStuff

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  #--- associations

  #--- validations
  validates_presence_of   :user_name
  validates_presence_of   :user_email
  validates_format_of     :user_email, :with => RE_EMAIL_OK, :message => 'has bad format'
  validates_presence_of   :subject
  validates_presence_of   :content
  validate :assure_human

  def assure_human
    if self.security_question_id &&  !RCaptcha::ANSWERS[self.security_question_id.to_i].include?(self.security_answer.to_s.downcase)
      errors.add(:security_answer, "must be correct - prove that you are human!")
      self.security_answer_invalid = true
    else
      self.security_answer_invalid = false
    end
  end
  
  #--- additional attributes
  attr_accessor :security_question_id
  attr_accessor :security_answer
  attr_accessor :security_answer_invalid
  
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
