module Publishable
#=======================================================================================

  def publishable?
    true
  end

#=======================================================================================

  def status_raw
    s = "unknown"
    if self.active
      if self.published
        pub = true
        pub = false if self.respond_to?(:styles)   && self.styles   != self.p_styles 
        pub = false if self.respond_to?(:abstract) && self.abstract != self.p_abstract
        pub = false if self.respond_to?(:content)  && self.content  != self.p_content 
        pub = false if self.respond_to?(:scripts)  && self.scripts  != self.p_scripts 
        pub = false if self.respond_to?(:tags_str) && self.tags_str != self.p_tags_str
        pub = false if self.respond_to?(:question_text) && self.question_text != self.p_question_text
        if self.respond_to?(:answer_a)
          Question::ANSWER_PREFIX.each do |q|
            pub = false if self.send("answer_#{q}") != self.send("p_answer_#{q}")
            pub = false if self.send("correct_#{q}") != self.send("p_correct_#{q}")
          end # each
        end # if
        s = "updated"
        s = "published" if pub
      else
        s = "new"
      end # if published
    else
      s = "disabled"
    end # if active
    return s
  end
  
  def status_str
    s = "<span class='status uknown'>???</span>"
    if self.active
      if self.published
        pub = true
        pub = false if self.respond_to?(:styles)   && self.styles   != self.p_styles 
        pub = false if self.respond_to?(:abstract) && self.abstract != self.p_abstract
        pub = false if self.respond_to?(:content)  && self.content  != self.p_content 
        pub = false if self.respond_to?(:scripts)  && self.scripts  != self.p_scripts 
        pub = false if self.respond_to?(:tags_str) && self.tags_str != self.p_tags_str
        pub = false if self.respond_to?(:question_text) && self.question_text != self.p_question_text
        if self.respond_to?(:answer_a)
          Question::ANSWER_PREFIX.each do |q|
            pub = false if self.send("answer_#{q}") != self.send("p_answer_#{q}")
            pub = false if self.send("correct_#{q}") != self.send("p_correct_#{q}")
          end # each
        end # if
        s = "<span class='status updated'>updated</span>"
        s = "<span class='status published'>published</span>" if pub
      else
        s = "<span class='status new'>new</span>"
      end # if published
    else
      s = "<span class='status disabled'>disabled</span>"
    end # if active
    return s.html_safe
  end
  
#---------------------------------------------------------------------------------------

  def activate
    self.active = !self.active
    self.save!
  end

#---------------------------------------------------------------------------------------

  def publish
    
    self.class.skip_version do

      if self.respond_to?(:styles)
        self.p1_styles  = self.p_styles
        self.p_styles   = self.styles
      end

      if self.respond_to?(:content)
        self.p1_content = self.p_content
        self.p_content  = self.content
      end

      if self.respond_to?(:abstract)
        self.p1_abstract = self.p_abstract
        self.p_abstract  = self.abstract
      end

      if self.respond_to?(:scripts)
        self.p1_scripts = self.p_scripts
        self.p_scripts  = self.scripts
      end

      if self.respond_to?(:posting_date)
        self.posting_date = Time.now unless self.posting_date 
        self.year         = self.posting_date.year  if self.respond_to?(:year)
        self.month        = self.posting_date.month if self.respond_to?(:month)
      end
    
      if self.respond_to?(:price)
        self.p1_price = self.p_price
        self.p_price  = self.price
      end

      if self.respond_to?(:url)
        self.p1_url = self.p_url
        self.p_url  = self.url
      end
      if self.respond_to?(:caption)
        self.p1_caption = self.p_caption
        self.p_caption  = self.caption
      end

      if self.respond_to?(:question_text)
        self.p1_question_text = self.p_question_text
        self.p_question_text  = self.question_text
      end
      if self.respond_to?(:answer_a)
        Question::ANSWER_PREFIX.each do |q|
          self.send("p1_answer_#{q}=",self.send("p_answer_#{q}"))
          self.send("p_answer_#{q}=",self.send("answer_#{q}"))
          self.send("p1_correct_#{q}=",self.send("p_correct_#{q}"))
          self.send("p_correct_#{q}=",self.send("correct_#{q}"))
        end # each
      end # if

      self.published = true
      self.save!

      self.associate_tags if self.respond_to?(:associate_tags)
      self.associate_cats if self.respond_to?(:associate_cats)

    end
  end

#---------------------------------------------------------------------------------------

  def revert_to_p

    self.class.skip_version do

      if self.respond_to?(:styles)
        self.styles   = self.p_styles
      end

      if self.respond_to?(:abstract)
        self.abstract   = self.p_abstract
      end

      if self.respond_to?(:content)
        self.content   = self.p_content
      end

      if self.respond_to?(:scripts)
        self.scripts    = self.p_scripts
      end

      if self.respond_to?(:price)
        self.price      = self.p_price
      end

      self.save!
    end
  end

  def revert_to_p1

    if self.respond_to?(:styles)
      self.styles   = self.p1_styles
    end

    if self.respond_to?(:abstract)
      self.abstract   = self.p1_abstract
    end

    if self.respond_to?(:content)
      self.content   = self.p1_content
    end

    if self.respond_to?(:scripts)
      self.scripts    = self.p1_scripts
    end

    if self.respond_to?(:price)
      self.price      = self.p1_price
    end

    self.save!
  end

#=======================================================================================
#=======================================================================================
  
  def before_save_tasks
    if self.respond_to?(:app_segment)
      self.name  = self.code.titleize #if self.name.blank?
      self.title = "#{self.app_segment.name} > #{self.name}"
      if self.respond_to?(:position) && self.respond_to?(:calc_pos)
        self.calc_pos = self.position + (1000*(self.app_segment_id-1))
      end
    end
  end

#=======================================================================================
end