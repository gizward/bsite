class CreateSchool < ActiveRecord::Migration
  def change

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :courses do |t|
      
      t.column :app_id,         :integer, :default => nil
      t.column :user_id,        :integer, :default => nil
      
      t.column :code,           :string,  :default => nil
      t.column :name,           :string,  :default => nil
      t.column :title,          :string,  :default => nil
      t.column :description,    :string,  :default => nil
      
      t.column :price,          :integer, :default => 2500
      t.column :abstract,       :text
      t.column :content,        :text
      t.column :scripts,        :text
      t.column :styles,         :text
      
      t.column :lectures_n,     :integer, :default => 0 # number of lectures/quizzes

      t.column :p_price,        :integer, :default => 0
      t.column :p_abstract,     :text
      t.column :p_content,      :text
      t.column :p_scripts,      :text
      t.column :p_styles,       :text

      t.column :p1_price,       :integer, :default => 0
      t.column :p1_abstract,    :text
      t.column :p1_content,     :text
      t.column :p1_scripts,     :text
      t.column :p1_styles,      :text

      t.column :instructor,     :string, :default => nil
      t.column :section_id,     :string, :default => nil
      
      t.column :app_segment_id, :integer, :default => 7
      t.column :position,       :integer, :default => 0
      t.column :calc_pos,       :integer, :default => 0
      t.column :published,      :boolean, :default => false
      t.column :active,         :boolean, :default => true

      t.column :publish_date,   :datetime
      t.column :year,           :integer, :dafault => 0
      t.column :month,          :integer, :dafault => 0
      t.column :day,            :integer, :dafault => 0
      
      t.column :active_days,    :integer, :default => 365 # after so many days, cert expires

      t.column :creator_id,     :integer, :default => nil
      t.column :editor_id,      :integer, :default => nil
      t.timestamps
    end

    #--------------------------------------------------------------------------
    create_table :enrollments do |t|

      t.column :course_id,       :integer, :default => nil

      t.column :user_id,         :integer, :default => nil 
      t.column :user_name,       :string,  :default => nil
      t.column :user_email,      :string,  :default => nil 
      t.column :reference_email, :string,  :default => nil # the email to which notifications will ALSO be sent (if different than main)
      # if for new user, this user will need to be auto-created and registration email sent

      t.column :price,           :integer, :default => 0
      t.column :paid,            :boolean, :default => false # set when paypal happy
      t.column :approved,        :boolean, :default => false # set when user_course created
      
      t.column :cc_name,         :string,  :default => nil
      t.column :cc_type,         :string,  :default => nil
      t.column :cc_number,       :string,  :default => nil
      t.column :cc_cvs,          :string,  :default => nil
      t.column :cc_date,         :string,  :default => nil

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end
    
    #--------------------------------------------------------------------------
    create_table :user_courses do |t|

      t.column :user_id,        :integer, :default => nil
      t.column :course_id,      :integer, :default => nil

      t.column :status_id,      :integer, :default => nil   # 1=in_progress, 2=passed, 3=failed, 4=expired
      t.column :progress,       :integer, :default => nil   # number of quizzes passed
      t.column :attempts,       :integer, :default => 0     # number of attempts
      t.column :dates_taken,    :string,  :default => nil

      t.column :passed,         :boolean, :default => false
      t.column :passed_str,     :string,  :default => nil   # passed quizzes for this course
      
      t.column :certificate,    :boolean, :default => false # true if cert sent
      t.column :card,           :boolean, :default => false # true if wallet card sent
      
      t.column :expiry_date,    :date

      t.column :reference_email,:string,  :default => nil # the email to which notifications will ALSO be sent (if different than main)

      t.column :creator_id,     :integer, :default => nil
      t.column :editor_id,      :integer, :default => nil
      t.timestamps
    end
    
    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :lectures do |t|
      
      t.column :course_id,      :integer, :default => nil
      
      t.column :app_id,         :integer, :default => nil
      t.column :user_id,        :integer, :default => nil
      
      t.column :code,           :string,  :default => nil
      t.column :name,           :string,  :default => nil
      t.column :title,          :string,  :default => nil
      t.column :description,    :string,  :default => nil
      
      t.column :abstract,       :text
      t.column :content,        :text

      t.column :p_abstract,     :text
      t.column :p_content,      :text

      t.column :p1_abstract,    :text
      t.column :p1_content,     :text

      t.column :app_segment_id, :integer, :default => 7
      t.column :position,       :integer, :default => 0
      t.column :calc_pos,       :integer, :default => 0
      t.column :published,      :boolean, :default => false
      t.column :active,         :boolean, :default => true

      t.column :publish_date,   :datetime
      t.column :year,           :integer, :dafault => 0
      t.column :month,          :integer, :dafault => 0
      t.column :day,            :integer, :dafault => 0

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end
      

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :quizzes do |t|
      
      t.column :lecture_id,     :integer, :default => nil
      
      t.column :app_id,         :integer, :default => nil
      t.column :user_id,        :integer, :default => nil
      
      t.column :code,           :string,  :default => nil
      t.column :name,           :string,  :default => nil
      t.column :title,          :string,  :default => nil
      t.column :description,    :string,  :default => nil
      
      t.column :questions_n,    :integer, :default => 0 # number of questions

      t.column :abstract,       :text
      t.column :content,        :text

      t.column :p_abstract,     :text
      t.column :p_content,      :text

      t.column :p1_abstract,    :text
      t.column :p1_content,     :text

      t.column :app_segment_id, :integer, :default => 7
      t.column :position,       :integer, :default => 0
      t.column :calc_pos,       :integer, :default => 0
      t.column :published,      :boolean, :default => false
      t.column :active,         :boolean, :default => true

      t.column :publish_date,   :datetime
      t.column :year,           :integer, :dafault => 0
      t.column :month,          :integer, :dafault => 0
      t.column :day,            :integer, :dafault => 0

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

    #--------------------------------------------------------------------------
    create_table :user_quizzes do |t|

      t.column :user_id,        :integer, :default => nil
      t.column :course_id,      :integer, :default => nil
      t.column :quiz_id,        :integer, :default => nil
      
      t.column :attempts,       :integer, :default => 0
      t.column :dates_taken,    :string,  :default => nil

      t.column :passed,         :boolean, :default => false
      t.column :passed_str,     :string,  :default => nil   # passed questions for this quiz
      t.column :answers_str,    :string,  :default => nil   # answer codes for this quiz
      
      t.column :dump,           :text # remembers the last-taken quiz data
      
      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end
    
    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :questions do |t|
      
      t.column :quiz_id,        :integer, :default => nil
      
      t.column :app_id,         :integer, :default => nil
      t.column :user_id,        :integer, :default => nil
      
      t.column :code,           :string,  :default => nil
      t.column :name,           :string,  :default => nil
      t.column :title,          :string,  :default => nil
      t.column :description,    :string,  :default => nil
      
      t.column :abstract,       :text # not sure how to use that
      t.column :content,        :text # not sure how to use that
      t.column :question_text,  :text # the actual tet of the question
      t.column :answer_a,       :string,  :default => nil
      t.column :answer_b,       :string,  :default => nil
      t.column :answer_c,       :string,  :default => nil
      t.column :answer_d,       :string,  :default => nil
      t.column :answer_e,       :string,  :default => nil
      t.column :answer_f,       :string,  :default => nil
      t.column :correct_a,      :boolean, :default => false
      t.column :correct_b,      :boolean, :default => false
      t.column :correct_c,      :boolean, :default => false
      t.column :correct_d,      :boolean, :default => false
      t.column :correct_e,      :boolean, :default => false
      t.column :correct_f,      :boolean, :default => false
      t.column :correct_str,    :string,  :default => nil

      t.column :p_abstract,     :text
      t.column :p_content,      :text
      t.column :p_question_text,:text
      t.column :p_answer_a,     :string,  :default => nil
      t.column :p_answer_b,     :string,  :default => nil
      t.column :p_answer_c,     :string,  :default => nil
      t.column :p_answer_d,     :string,  :default => nil
      t.column :p_answer_e,     :string,  :default => nil
      t.column :p_answer_f,     :string,  :default => nil
      t.column :p_correct_a,    :boolean, :default => false
      t.column :p_correct_b,    :boolean, :default => false
      t.column :p_correct_c,    :boolean, :default => false
      t.column :p_correct_d,    :boolean, :default => false
      t.column :p_correct_e,    :boolean, :default => false
      t.column :p_correct_f,    :boolean, :default => false
      t.column :p_correct_str,  :string,  :default => nil

      t.column :p1_abstract,    :text
      t.column :p1_content,     :text
      t.column :p1_question_text,:text
      t.column :p1_answer_a,    :string,  :default => nil
      t.column :p1_answer_b,    :string,  :default => nil
      t.column :p1_answer_c,    :string,  :default => nil
      t.column :p1_answer_d,    :string,  :default => nil
      t.column :p1_answer_e,    :string,  :default => nil
      t.column :p1_answer_f,    :string,  :default => nil
      t.column :p1_correct_a,   :boolean, :default => false
      t.column :p1_correct_b,   :boolean, :default => false
      t.column :p1_correct_c,   :boolean, :default => false
      t.column :p1_correct_d,   :boolean, :default => false
      t.column :p1_correct_e,   :boolean, :default => false
      t.column :p1_correct_f,   :boolean, :default => false
      t.column :p1_correct_str, :string,  :default => nil


      t.column :display_id,     :integer, :default => 1 # 1=checkbox, 2=radio, 3=dropdown
      t.column :app_segment_id, :integer, :default => 7
      t.column :position,       :integer, :default => 0
      t.column :calc_pos,       :integer, :default => 0
      t.column :published,      :boolean, :default => false
      t.column :active,         :boolean, :default => true

      t.column :publish_date,   :datetime
      t.column :year,           :integer, :dafault => 0
      t.column :month,          :integer, :dafault => 0
      t.column :day,            :integer, :dafault => 0

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

  end
end
