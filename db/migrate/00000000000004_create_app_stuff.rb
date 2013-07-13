class CreateAppStuff < ActiveRecord::Migration
  def change
    
    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :app_segments do |t|

      t.string  :code,        :default => nil
      t.string  :name,        :default => nil
      t.string  :title,       :default => nil
      t.string  :description, :default => nil

    end

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :app_events do |t|

      t.column :code,             :string,  :default => nil
      t.column :name,             :string,  :default => nil
      t.column :title,            :string,  :default => nil
      t.column :description,      :string,  :default => nil
      
      t.column :app_id,           :integer, :default => nil # application id
      t.column :user_id,          :integer, :default => nil

      t.column :user_name,        :string,  :default => nil
      t.column :user_email,       :string,  :default => nil
      t.column :user_website,     :string,  :default => nil
      
      t.column :object_id,        :integer, :default => nil
      t.column :object_type,      :string,  :default => nil

      t.column :object_code,      :string,  :default => nil
      t.column :object_name,      :string,  :default => nil
      t.column :object_title,     :string,  :default => nil
      
      t.column :controller_name,  :string,  :default => nil
      t.column :action_name,      :string,  :default => nil

      t.column :event_action,     :string,  :default => nil
      t.column :event_result,     :text

      t.column :message,          :text
      t.column :dump,             :text
      
      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :app_errors do |t|

      t.column :code,             :string,  :default => nil
      t.column :name,             :string,  :default => nil
      t.column :title,            :string,  :default => nil
      t.column :description,      :string,  :default => nil
      
      t.column :app_id,           :integer, :default => nil # application id
      t.column :user_id,          :integer, :default => nil

      t.column :user_name,        :string,  :default => nil
      t.column :user_email,       :string,  :default => nil
      t.column :user_website,     :string,  :default => nil
      
      t.column :object_id,        :integer, :default => nil
      t.column :object_type,      :string,  :default => nil

      t.column :object_code,      :string,  :default => nil
      t.column :object_name,      :string,  :default => nil
      t.column :object_title,     :string,  :default => nil
      
      t.column :controller_name,  :string, :default => nil
      t.column :action_name,      :string, :default => nil

      t.column :message,          :text
      t.column :dump,             :text

      t.column :severity,         :integer, :default => 0
      t.column :active,           :boolean, :default => true
      t.column :sent,             :boolean, :default => false
      
      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end
    
  end
end
