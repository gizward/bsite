class CreateAppSettings < ActiveRecord::Migration
  def change
    
    #--------------------------------------------------------------------------
    #--------------------------------------------------------------------------
    create_table :app_settings do |t|

      t.integer :app_id,                :default => nil
      t.integer :user_id,               :default => nil
      
      t.string  :code,                  :default => nil
      t.string  :name,                  :default => "Default"
      t.string  :title,                 :default => nil
      t.string  :description,           :default => "Default Application Settings"

      t.string  :global_meta_title,     :default => "Mike's Site"
      t.string  :global_meta_dscr,      :default => "Mike's Site"
      t.string  :global_meta_keywords,  :default => nil
      t.string  :global_meta_author,    :default => nil
      t.string  :global_meta_robots,    :default => "[noindex|nofollow]"
      t.string  :global_favicon,        :default => nil

      t.boolean :global_show_admbar,    :default => false
      t.boolean :global_show_devbar,    :default => false
      
      #--- default settings for home access
      t.boolean :home_enable,           :default => true
      t.boolean :home_requires_auth,    :default => false

      #--- default meta tags for home - presets
      t.string  :home_meta_title,       :default => nil
      t.string  :home_meta_dscr,        :default => nil
      t.string  :home_meta_keywords,    :default => nil
      t.string  :home_meta_author,      :default => nil
      t.string  :home_meta_robots,      :default => nil
      t.string  :home_favicon,          :default => nil

      #--- flags for home - switches
      t.boolean :home_show_userbar,     :default => true
      t.boolean :home_show_overheader,  :default => false
      t.boolean :home_show_header,      :default => true
      t.boolean :home_show_underheader, :default => false
      t.boolean :home_show_nav1,        :default => true
      t.boolean :home_show_nav2,        :default => false
      t.boolean :home_show_menu1,       :default => false
      t.boolean :home_show_menu2,       :default => false
      t.boolean :home_show_overfooter,  :default => false
      t.boolean :home_show_footer,      :default => false
      t.boolean :home_show_underfooter, :default => false
      t.boolean :home_show_credits,     :default => true

      #--- default settings for blog access
      t.boolean :blog_enable,           :default => true
      t.boolean :blog_requires_auth,    :default => false

      #--- default meta tags for blog - presets
      t.string  :blog_meta_title,       :default => "Blog"
      t.string  :blog_meta_dscr,        :default => nil
      t.string  :blog_meta_keywords,    :default => nil
      t.string  :blog_meta_author,      :default => nil
      t.string  :blog_meta_robots,      :default => nil
      t.string  :blog_favicon,          :default => nil

      #--- flags for blog - switches
      t.boolean :blog_show_userbar,     :default => true
      t.boolean :blog_show_overheader,  :default => false
      t.boolean :blog_show_header,      :default => false
      t.boolean :blog_show_underheader, :default => false
      t.boolean :blog_show_nav1,        :default => false
      t.boolean :blog_show_nav2,        :default => false
      t.boolean :blog_show_menu1,       :default => false
      t.boolean :blog_show_menu2,       :default => false
      t.boolean :blog_show_overfooter,  :default => false
      t.boolean :blog_show_footer,      :default => false
      t.boolean :blog_show_underfooter, :default => false
      t.boolean :blog_show_credits,     :default => false

      #--- default settings for forum access
      t.boolean :forum_enable,           :default => true
      t.boolean :forum_requires_auth,    :default => false

      #--- default meta tags for forum - presets
      t.string  :forum_meta_title,       :default => "Forum"
      t.string  :forum_meta_dscr,        :default => nil
      t.string  :forum_meta_keywords,    :default => nil
      t.string  :forum_meta_author,      :default => nil
      t.string  :forum_meta_robots,      :default => nil
      t.string  :forum_favicon,          :default => nil

      #--- flags for forum - switches
      t.boolean :forum_show_userbar,     :default => true
      t.boolean :forum_show_overheader,  :default => false
      t.boolean :forum_show_header,      :default => false
      t.boolean :forum_show_underheader, :default => false
      t.boolean :forum_show_nav1,        :default => false
      t.boolean :forum_show_nav2,        :default => false
      t.boolean :forum_show_menu1,       :default => false
      t.boolean :forum_show_menu2,       :default => false
      t.boolean :forum_show_overfooter,  :default => false
      t.boolean :forum_show_footer,      :default => false
      t.boolean :forum_show_underfooter, :default => false
      t.boolean :forum_show_credits,     :default => false

      #--- default settings for store access
      t.boolean :store_enable,          :default => true
      t.boolean :store_requires_auth,   :default => false

      #--- default meta tags for store - presets
      t.string  :store_meta_title,      :default => "Store"
      t.string  :store_meta_dscr,       :default => nil
      t.string  :store_meta_keywords,   :default => nil
      t.string  :store_meta_author,     :default => nil
      t.string  :store_meta_robots,     :default => nil
      t.string  :store_favicon,         :default => nil

      #--- flags for store - switches
      t.boolean :store_show_userbar,    :default => true
      t.boolean :store_show_overheader, :default => false
      t.boolean :store_show_header,     :default => false
      t.boolean :store_show_underheader,:default => false
      t.boolean :store_show_nav1,        :default => false
      t.boolean :store_show_nav2,        :default => false
      t.boolean :store_show_menu1,       :default => false
      t.boolean :store_show_menu2,       :default => false
      t.boolean :store_show_overfooter, :default => false
      t.boolean :store_show_footer,     :default => false
      t.boolean :store_show_underfooter,:default => false
      t.boolean :store_show_credits,    :default => false

      #--- default settings for school access
      t.boolean :school_enable,          :default => true
      t.boolean :school_requires_auth,   :default => false

      #--- default meta tags for school - presets
      t.string  :school_meta_title,      :default => "School"
      t.string  :school_meta_dscr,       :default => nil
      t.string  :school_meta_keywords,   :default => nil
      t.string  :school_meta_author,     :default => nil
      t.string  :school_meta_robots,     :default => nil
      t.string  :school_favicon,         :default => nil

      #--- flags for school - switches
      t.boolean :school_show_userbar,    :default => true
      t.boolean :school_show_overheader, :default => false
      t.boolean :school_show_header,     :default => true
      t.boolean :school_show_underheader,:default => false
      t.boolean :school_show_nav1,        :default => true
      t.boolean :school_show_nav2,        :default => false
      t.boolean :school_show_menu1,       :default => false
      t.boolean :school_show_menu2,       :default => false
      t.boolean :school_show_overfooter, :default => false
      t.boolean :school_show_footer,     :default => false
      t.boolean :school_show_underfooter,:default => false
      t.boolean :school_show_credits,    :default => true

      #--- default meta tags for auth - presets
      t.string  :auth_meta_title,       :default => nil
      t.string  :auth_meta_dscr,        :default => nil
      t.string  :auth_meta_keywords,    :default => nil
      t.string  :auth_meta_author,      :default => nil
      t.string  :auth_meta_robots,      :default => nil
      t.string  :auth_favicon,          :default => nil

      #--- flags for auth - switches
      t.boolean :auth_show_userbar,     :default => false
      t.boolean :auth_show_overheader,  :default => false
      t.boolean :auth_show_header,      :default => true
      t.boolean :auth_show_underheader, :default => false
      t.boolean :auth_show_nav1,        :default => false
      t.boolean :auth_show_nav2,        :default => false
      t.boolean :auth_show_menu1,       :default => false
      t.boolean :auth_show_menu2,       :default => false
      t.boolean :auth_show_overfooter,  :default => false
      t.boolean :auth_show_footer,      :default => false
      t.boolean :auth_show_underfooter, :default => false
      t.boolean :auth_show_credits,     :default => true

      #--- default auth redirections - presets
      t.string  :after_login_path,      :default => "/pages"
      t.string  :after_logout_path,     :default => "/users/sign_in"
      
      #--- default meta tags for user - presets
      t.string  :user_meta_title,       :default => nil
      t.string  :user_meta_dscr,        :default => nil
      t.string  :user_meta_keywords,    :default => nil
      t.string  :user_meta_author,      :default => nil
      t.string  :user_meta_robots,      :default => nil
      t.string  :user_favicon,          :default => nil

      #--- flags for user - switches
      t.boolean :user_show_userbar,     :default => true
      t.boolean :user_show_overheader,  :default => false
      t.boolean :user_show_header,      :default => true
      t.boolean :user_show_underheader, :default => false
      t.boolean :user_show_nav1,        :default => true
      t.boolean :user_show_nav2,        :default => false
      t.boolean :user_show_menu1,       :default => false
      t.boolean :user_show_menu2,       :default => false
      t.boolean :user_show_overfooter,  :default => false
      t.boolean :user_show_footer,      :default => false
      t.boolean :user_show_underfooter, :default => false
      t.boolean :user_show_credits,     :default => true

      #--- default settings for store access
      t.boolean :admin_enable,          :default => true
      t.boolean :admin_requires_auth,   :default => true

      #--- default meta tags for admin - presets
      t.string :admin_meta_title,       :default => "Admin Area"
      t.string :admin_meta_dscr,        :default => nil
      t.string :admin_meta_keywords,    :default => nil
      t.string :admin_meta_author,      :default => nil
      t.string :admin_meta_robots,      :default => nil
      t.string :admin_favicon,          :default => nil

      #--- flags for admin - switches
      t.boolean :admin_show_userbar,    :default => true
      t.boolean :admin_show_overheader, :default => false
      t.boolean :admin_show_header,     :default => true
      t.boolean :admin_show_underheader,:default => false
      t.boolean :admin_show_nav1,       :default => false
      t.boolean :admin_show_nav2,       :default => false
      t.boolean :admin_show_menu1,      :default => false
      t.boolean :admin_show_menu2,      :default => false
      t.boolean :admin_show_overfooter, :default => false
      t.boolean :admin_show_footer,     :default => false
      t.boolean :admin_show_underfooter,:default => false
      t.boolean :admin_show_credits,    :default => true

      #--- paypal settings
      t.boolean :paypal_enabled,         :default => false
      t.string  :paypal_url,             :default => nil
      t.string  :paypal_login,           :default => nil
      t.string  :paypal_password,        :default => nil
      t.string  :paypal_signature,       :default => nil

      t.column :creator_id,      :integer, :default => nil
      t.column :editor_id,       :integer, :default => nil
      t.timestamps
    end

  end
end
