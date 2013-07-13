class CreateBlog < ActiveRecord::Migration
  def change

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :blogs do |t|
      
      t.column :app_id,         :integer, :default => nil
      t.column :user_id,        :integer, :default => nil
      
      t.column :code,           :string,  :default => nil
      t.column :name,           :string,  :default => nil
      t.column :title,          :string,  :default => nil
      t.column :description,    :string,  :default => nil
      
      t.column :abstract,       :text
      t.column :p_abstract,     :text
      t.column :p1_abstract,    :text

      t.column :content,        :text
      t.column :p_content,      :text
      t.column :p1_content,     :text
      
      t.column :tags_str,       :string,  :default => nil
      
      t.column :app_segment_id, :integer, :default => 4
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
    create_table :tags do |t|
      
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
    create_table :blog_tags do |t|

      t.column :blog_id,        :integer, :default => nil
      t.column :tag_id,         :integer, :default => nil
      t.column :position,       :integer, :default => 0
      t.column :active,         :boolean, :default => true
      
      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end


  end
end
