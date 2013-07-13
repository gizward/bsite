class CreateStore < ActiveRecord::Migration
  def change

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :products do |t|
      
      t.column :code,           :string,  :default => nil
      t.column :name,           :string,  :default => nil
      t.column :title,          :string,  :default => nil
      t.column :description,    :string,  :default => nil
      
      t.column :app_id,         :integer, :default => nil
      t.column :user_id,        :integer, :default => nil
      
      t.column :meta_title,     :string,  :default => nil
      t.column :meta_dscr,      :string,  :default => nil
      t.column :meta_keywords,  :string,  :default => nil
      t.column :meta_author,    :string,  :default => nil
      t.column :meta_robots,    :string,  :default => nil

      t.column :abstract,       :text
      t.column :p_abstract,     :text
      t.column :p1_abstract,    :text

      t.column :content,        :text
      t.column :p_content,      :text
      t.column :p1_content,     :text
      
      t.column :price,          :integer, :default => 0
      t.column :p_price,        :integer, :default => 0
      t.column :p1_price,       :integer, :default => 0
      
      t.column :options_str,    :string,  :default => nil
      t.column :p_options_str,  :string,  :default => nil
      t.column :p1_options_str, :string,  :default => nil
      
      t.column :categories_str, :string,  :default => nil
      t.column :images_str,     :string,  :default => nil

      t.column :app_segment_id, :integer, :default => 5
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
    create_table :categories do |t|
      
      t.column :app_id,         :integer, :default => nil
      t.column :user_id,        :integer, :default => nil
      
      t.column :code,           :string,  :default => nil
      t.column :name,           :string,  :default => nil
      t.column :title,          :string,  :default => nil
      t.column :description,    :string,  :default => nil

      t.column :active,         :boolean, :default => true

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :product_categories do |t|

      t.column :product_id,     :integer, :default => nil
      t.column :category_id,    :integer, :default => nil

      t.column :position,       :integer, :default => 0
      t.column :active,         :boolean, :default => true

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :product_documents do |t|

      t.column :product_id,     :integer, :default => nil
      t.column :document_id,    :integer, :default => nil

      t.column :position,       :integer, :default => 0
      t.column :active,         :boolean, :default => true

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

    #--------------------------------------------------------------------------
    create_table :product_images do |t|

      t.column :product_id,     :integer, :default => nil
      t.column :image_id,       :integer, :default => nil

      t.column :position,       :integer, :default => 0
      t.column :active,         :boolean, :default => true

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

    #--------------------------------------------------------------------------
    create_table :product_videos do |t|

      t.column :product_id,     :integer, :default => nil
      t.column :video_id,       :integer, :default => nil

      t.column :position,       :integer, :default => 0
      t.column :active,         :boolean, :default => true

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

  end
end
