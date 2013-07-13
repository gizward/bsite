class CreateWebsite < ActiveRecord::Migration
  def change

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :pages do |t|
      
      t.column :app_id,         :integer, :default => nil
      t.column :user_id,        :integer, :default => nil
      
      t.column :code,           :string,  :default => nil
      t.column :name,           :string,  :default => nil
      t.column :title,          :string,  :default => nil
      t.column :description,    :string,  :default => nil
      
      t.column :meta_title,     :string,  :default => nil
      t.column :meta_dscr,      :string,  :default => nil
      t.column :meta_keywords,  :string,  :default => nil
      t.column :meta_author,    :string,  :default => nil
      t.column :meta_robots,    :string,  :default => nil

      t.column :abstract,       :text
      t.column :content,        :text
      t.column :scripts,        :text
      t.column :styles,         :text
      t.column :layout_id,      :integer, :default => 0
      t.column :redirect_url,   :string, :default => nil
      
      t.column :p_abstract,     :text
      t.column :p_content,      :text
      t.column :p_scripts,      :text
      t.column :p_styles,       :text
      t.column :p_layout_id,    :integer, :default => 0
      t.column :p_redirect_url, :string, :default => nil

      t.column :p1_abstract,    :text
      t.column :p1_content,     :text
      t.column :p1_scripts,     :text
      t.column :p1_styles,      :text
      t.column :p1_layout_id,   :integer, :default => 0
      t.column :p1_redirect_url,:string, :default => nil
      
      t.column :app_segment_id, :integer, :default => 1
      t.column :position,       :integer, :default => 0
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
    create_table :snipplets do |t|
      
      t.column :app_id,         :integer, :default => nil
      t.column :user_id,        :integer, :default => nil
      
      t.column :code,           :string,  :default => nil
      t.column :name,           :string,  :default => nil
      t.column :title,          :string,  :default => nil
      t.column :description,    :string,  :default => nil
      
      t.column :content,        :text
      t.column :scripts,        :text
      t.column :styles,         :text
      
      t.column :p_content,      :text
      t.column :p_scripts,      :text
      t.column :p_styles,       :text

      t.column :p1_content,     :text
      t.column :p1_scripts,     :text
      t.column :p1_styles,      :text
      
      t.column :app_segment_id, :integer, :default => 1
      t.column :position,       :integer, :default => 0
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
    create_table :css_styles do |t|
      
      t.column :app_id,         :integer, :default => nil
      t.column :user_id,        :integer, :default => nil
      
      t.column :code,           :string,  :default => nil
      t.column :name,           :string,  :default => nil
      t.column :title,          :string,  :default => nil
      t.column :description,    :string,  :default => nil
      
      t.column :styles,         :text
      t.column :p_styles,       :text
      t.column :p1_styles,      :text
      
      t.column :app_segment_id, :integer, :default => 1
      t.column :position,       :integer, :default => 0
      t.column :calc_pos,       :integer, :default => 0 # calculated position
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
    create_table :js_scripts do |t|
      
      t.column :app_id,         :integer, :default => nil
      t.column :user_id,        :integer, :default => nil
      
      t.column :code,           :string,  :default => nil
      t.column :name,           :string,  :default => nil
      t.column :title,          :string,  :default => nil
      t.column :description,    :string,  :default => nil
      
      t.column :scripts,        :text
      t.column :p_scripts,      :text
      t.column :p1_scripts,     :text
      
      t.column :app_segment_id, :integer, :default => 1
      t.column :position,       :integer, :default => 0
      t.column :calc_pos,       :integer, :default => 0 # calculated position
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
