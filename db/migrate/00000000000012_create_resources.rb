class CreateResources < ActiveRecord::Migration
  def change

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :image_attachments do |t|

      t.column :code,             :string,  :default => nil
      t.column :name,             :string,  :default => nil
      t.column :title,            :string,  :default => nil
      t.column :description,      :string,  :default => nil
      
      t.column :app_id,           :integer, :default => nil # application id
      t.column :user_id,          :integer, :default => nil
      t.column :image_id,         :integer, :default => nil

      t.column :attached_image_file_name,     :string,  :default => nil
      t.column :attached_image_content_type,  :string,  :default => nil
      t.column :attached_image_file_size,     :integer, :default => 0

      t.column :position,         :integer, :default => 0
      t.column :active,           :boolean, :default => true

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :images do |t|

      t.column :app_id,           :integer, :default => nil # application id
      t.column :user_id,          :integer, :default => nil

      t.column :code,             :string,  :default => nil
      t.column :name,             :string,  :default => nil
      t.column :title,            :string,  :default => nil
      t.column :description,      :string,  :default => nil
      
      t.column :caption,          :text
      t.column :url,              :string,  :default => nil

      t.column :p_caption,        :text
      t.column :p_url,            :string,  :default => nil
      
      t.column :p1_caption,       :text
      t.column :p1_url,           :string,  :default => nil
      
      t.column :position,         :integer, :default => 0
      t.column :published,        :boolean, :default => false
      t.column :active,           :boolean, :default => true

      t.column :publish_date,     :datetime
      t.column :year,             :integer, :dafault => 0
      t.column :month,            :integer, :dafault => 0
      t.column :day,              :integer, :dafault => 0

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :video_attachments do |t|

      t.column :code,             :string,  :default => nil
      t.column :name,             :string,  :default => nil
      t.column :title,            :string,  :default => nil
      t.column :description,      :string,  :default => nil
      
      t.column :app_id,           :integer, :default => nil # application id
      t.column :user_id,          :integer, :default => nil
      t.column :video_id,         :integer, :default => nil

      t.column :attached_video_file_name,     :string,  :default => nil
      t.column :attached_video_content_type,  :string,  :default => nil
      t.column :attached_video_file_size,     :integer, :default => 0

      t.column :position,         :integer, :default => 0
      t.column :active,           :boolean, :default => true

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :videos do |t|

      t.column :app_id,           :integer, :default => nil # application id
      t.column :user_id,          :integer, :default => nil

      t.column :code,             :string,  :default => nil
      t.column :name,             :string,  :default => nil
      t.column :title,            :string,  :default => nil
      t.column :description,      :string,  :default => nil
      
      t.column :caption,          :text
      t.column :url,              :string,  :default => nil
      t.column :youtube,          :string,  :default => nil
      

      t.column :p_caption,        :text
      t.column :p_url,            :string,  :default => nil
      t.column :p_youtube,        :string,  :default => nil
      
      t.column :p1_caption,       :text
      t.column :p1_url,           :string,  :default => nil
      t.column :p1_youtube,       :string,  :default => nil
      
      t.column :position,         :integer, :default => 0
      t.column :published,        :boolean, :default => false
      t.column :active,           :boolean, :default => true

      t.column :publish_date,     :datetime
      t.column :year,             :integer, :dafault => 0
      t.column :month,            :integer, :dafault => 0
      t.column :day,              :integer, :dafault => 0

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :document_attachments do |t|

      t.column :code,             :string,  :default => nil
      t.column :name,             :string,  :default => nil
      t.column :title,            :string,  :default => nil
      t.column :description,      :string,  :default => nil
      
      t.column :app_id,           :integer, :default => nil # application id
      t.column :user_id,          :integer, :default => nil
      t.column :document_id,      :integer, :default => nil

      t.column :attached_document_file_name,     :string,  :default => nil
      t.column :attached_document_content_type,  :string,  :default => nil
      t.column :attached_document_file_size,     :integer, :default => 0

      t.column :position,         :integer, :default => 0
      t.column :active,           :boolean, :default => true

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end
    
    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :documents do |t|

      t.column :app_id,           :integer, :default => nil # application id
      t.column :user_id,          :integer, :default => nil

      t.column :code,             :string,  :default => nil
      t.column :name,             :string,  :default => nil
      t.column :title,            :string,  :default => nil
      t.column :description,      :string,  :default => nil
      
      t.column :abstract,         :text
      t.column :content,          :text
      t.column :url,              :string,  :default => nil
      
      t.column :p_abstract,       :text
      t.column :p_content,        :text
      t.column :p_url,            :string,  :default => nil

      t.column :p1_abstract,      :text
      t.column :p1_content,       :text
      t.column :p1_url,           :string,  :default => nil

      t.column :position,         :integer, :default => 0
      t.column :published,        :boolean, :default => false
      t.column :active,           :boolean, :default => true

      t.column :publish_date,     :datetime
      t.column :year,             :integer, :dafault => 0
      t.column :month,            :integer, :dafault => 0
      t.column :day,              :integer, :dafault => 0

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
  end
end
