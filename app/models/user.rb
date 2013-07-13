class User < ActiveRecord::Base
#--------------------------------------------------------------------------------------------------------------------------------

  include CommonStuff
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name,
    :deletable, :editable,:role_id,
    :line1,:line2,:city,:zip,:state,:country
    
  #--- associations
  has_many :emails
  has_many :comments
  has_many :user_courses
  has_many :user_quizzes
  has_many :courses, :through => :user_courses
  has_many :quizzes, :through => :user_quizzes
    

#--------------------------------------------------------------------------------------------------------------------------------

  VISITOR     = 0
  CONTRIBUTOR = 1
  CUSTOMER    = 2
  STUDENT     = 3
  ADMIN       = 4
  DEVELOPER   = 5
  ROLES = %w(visitor contributor customer student admin developer)
  
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def is_visitor?
    return self.role_id >= VISITOR
  end
  def is_contributor?
    return self.role_id >= CONTRIBUTOR
  end
  def is_customer?
    return self.role_id >= CUSTOMER
  end
  def is_student?
    return self.role_id >= STUDENT
  end
  def is_admin?
    return self.role_id >= ADMIN
  end
  def is_developer?
    return self.role_id >= DEVELOPER
  end
  
#--------------------------------------------------------------------------------------------------------------------------------

  def role_str
    r = self.role_id
    s = "<span class='role #{ROLES[r]}'>#{ROLES[r]}</span>"
    return s.html_safe
  end
  
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def current_courses
    return self.user_courses.select{|c| c if !c.passed }.map{|x| x.course}
  end
  def completed_courses
    return self.user_courses.select{|c| c if c.passed }.map{|x| x.course}
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
