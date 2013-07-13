class CreateFeedbacks < ActiveRecord::Migration
  def change

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :comments do |t|
      
      t.column :code,             :string,  :default => nil
      t.column :name,             :string,  :default => nil
      t.column :title,            :string,  :default => nil
      t.column :description,      :string,  :default => nil
      
      t.column :app_id,           :integer, :default => nil # application id
      t.column :user_id,          :integer, :default => nil

      t.column :user_name,        :string,  :default => nil
      t.column :user_email,       :string,  :default => nil
      t.column :user_website,     :string,  :default => nil
      
      t.column :owner_id,         :integer, :default => 0
      t.column :owner_type,       :string,  :default => nil
      
      t.column :owner_code,       :string,  :default => nil
      t.column :owner_name,       :string,  :default => nil
      t.column :owner_title,      :string,  :default => nil
      
      t.column :subject,          :string,  :default => nil
      t.column :content,          :text
      
      t.column :parent_id,        :integer, :default => 0 # for nested comments and threads
      t.column :position,         :integer, :default => 0
      t.column :active,           :boolean, :default => true

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :emails do |t|
      
      t.column :code,             :string,  :default => nil
      t.column :name,             :string,  :default => nil
      t.column :title,            :string,  :default => nil
      t.column :description,      :string,  :default => nil
      
      t.column :app_id,           :integer, :default => nil # application id
      t.column :user_id,          :integer, :default => nil

      t.column :user_name,        :string,  :default => nil
      t.column :user_email,       :string,  :default => nil
      t.column :user_website,     :string,  :default => nil
      
      t.column :owner_id,         :integer, :default => 0
      t.column :owner_type,       :string,  :default => nil
      
      t.column :owner_code,       :string,  :default => nil
      t.column :owner_name,       :string,  :default => nil
      t.column :owner_title,      :string,  :default => nil
      
      t.column :subject,          :string,  :default => nil
      t.column :content,          :text
      
      t.column :position,         :integer, :default => 0
      t.column :active,           :boolean, :default => true

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

  end
end
