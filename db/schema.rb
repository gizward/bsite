# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 50) do

  create_table "app_errors", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "user_name"
    t.string   "user_email"
    t.string   "user_website"
    t.integer  "object_id"
    t.string   "object_type"
    t.string   "object_code"
    t.string   "object_name"
    t.string   "object_title"
    t.string   "controller_name"
    t.string   "action_name"
    t.text     "message"
    t.text     "dump"
    t.integer  "severity",        :default => 0
    t.boolean  "active",          :default => true
    t.boolean  "sent",            :default => false
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "app_events", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "user_name"
    t.string   "user_email"
    t.string   "user_website"
    t.integer  "object_id"
    t.string   "object_type"
    t.string   "object_code"
    t.string   "object_name"
    t.string   "object_title"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "event_action"
    t.text     "event_result"
    t.text     "message"
    t.text     "dump"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "app_segments", :force => true do |t|
    t.string "code"
    t.string "name"
    t.string "title"
    t.string "description"
  end

  create_table "app_settings", :force => true do |t|
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name",                    :default => "Default"
    t.string   "title"
    t.string   "description",             :default => "Default Application Settings"
    t.string   "global_meta_title",       :default => "Mike's Site"
    t.string   "global_meta_dscr",        :default => "Mike's Site"
    t.string   "global_meta_keywords"
    t.string   "global_meta_author"
    t.string   "global_meta_robots",      :default => "[noindex|nofollow]"
    t.string   "global_favicon"
    t.boolean  "global_show_admbar",      :default => false
    t.boolean  "global_show_devbar",      :default => false
    t.boolean  "home_enable",             :default => true
    t.boolean  "home_requires_auth",      :default => false
    t.string   "home_meta_title"
    t.string   "home_meta_dscr"
    t.string   "home_meta_keywords"
    t.string   "home_meta_author"
    t.string   "home_meta_robots"
    t.string   "home_favicon"
    t.boolean  "home_show_userbar",       :default => true
    t.boolean  "home_show_overheader",    :default => false
    t.boolean  "home_show_header",        :default => true
    t.boolean  "home_show_underheader",   :default => false
    t.boolean  "home_show_nav1",          :default => true
    t.boolean  "home_show_nav2",          :default => false
    t.boolean  "home_show_menu1",         :default => false
    t.boolean  "home_show_menu2",         :default => false
    t.boolean  "home_show_overfooter",    :default => false
    t.boolean  "home_show_footer",        :default => false
    t.boolean  "home_show_underfooter",   :default => false
    t.boolean  "home_show_credits",       :default => true
    t.boolean  "blog_enable",             :default => true
    t.boolean  "blog_requires_auth",      :default => false
    t.string   "blog_meta_title",         :default => "Blog"
    t.string   "blog_meta_dscr"
    t.string   "blog_meta_keywords"
    t.string   "blog_meta_author"
    t.string   "blog_meta_robots"
    t.string   "blog_favicon"
    t.boolean  "blog_show_userbar",       :default => true
    t.boolean  "blog_show_overheader",    :default => false
    t.boolean  "blog_show_header",        :default => false
    t.boolean  "blog_show_underheader",   :default => false
    t.boolean  "blog_show_nav1",          :default => false
    t.boolean  "blog_show_nav2",          :default => false
    t.boolean  "blog_show_menu1",         :default => false
    t.boolean  "blog_show_menu2",         :default => false
    t.boolean  "blog_show_overfooter",    :default => false
    t.boolean  "blog_show_footer",        :default => false
    t.boolean  "blog_show_underfooter",   :default => false
    t.boolean  "blog_show_credits",       :default => false
    t.boolean  "forum_enable",            :default => true
    t.boolean  "forum_requires_auth",     :default => false
    t.string   "forum_meta_title",        :default => "Forum"
    t.string   "forum_meta_dscr"
    t.string   "forum_meta_keywords"
    t.string   "forum_meta_author"
    t.string   "forum_meta_robots"
    t.string   "forum_favicon"
    t.boolean  "forum_show_userbar",      :default => true
    t.boolean  "forum_show_overheader",   :default => false
    t.boolean  "forum_show_header",       :default => false
    t.boolean  "forum_show_underheader",  :default => false
    t.boolean  "forum_show_nav1",         :default => false
    t.boolean  "forum_show_nav2",         :default => false
    t.boolean  "forum_show_menu1",        :default => false
    t.boolean  "forum_show_menu2",        :default => false
    t.boolean  "forum_show_overfooter",   :default => false
    t.boolean  "forum_show_footer",       :default => false
    t.boolean  "forum_show_underfooter",  :default => false
    t.boolean  "forum_show_credits",      :default => false
    t.boolean  "store_enable",            :default => true
    t.boolean  "store_requires_auth",     :default => false
    t.string   "store_meta_title",        :default => "Store"
    t.string   "store_meta_dscr"
    t.string   "store_meta_keywords"
    t.string   "store_meta_author"
    t.string   "store_meta_robots"
    t.string   "store_favicon"
    t.boolean  "store_show_userbar",      :default => true
    t.boolean  "store_show_overheader",   :default => false
    t.boolean  "store_show_header",       :default => false
    t.boolean  "store_show_underheader",  :default => false
    t.boolean  "store_show_nav1",         :default => false
    t.boolean  "store_show_nav2",         :default => false
    t.boolean  "store_show_menu1",        :default => false
    t.boolean  "store_show_menu2",        :default => false
    t.boolean  "store_show_overfooter",   :default => false
    t.boolean  "store_show_footer",       :default => false
    t.boolean  "store_show_underfooter",  :default => false
    t.boolean  "store_show_credits",      :default => false
    t.boolean  "school_enable",           :default => true
    t.boolean  "school_requires_auth",    :default => false
    t.string   "school_meta_title",       :default => "School"
    t.string   "school_meta_dscr"
    t.string   "school_meta_keywords"
    t.string   "school_meta_author"
    t.string   "school_meta_robots"
    t.string   "school_favicon"
    t.boolean  "school_show_userbar",     :default => true
    t.boolean  "school_show_overheader",  :default => false
    t.boolean  "school_show_header",      :default => true
    t.boolean  "school_show_underheader", :default => false
    t.boolean  "school_show_nav1",        :default => true
    t.boolean  "school_show_nav2",        :default => false
    t.boolean  "school_show_menu1",       :default => false
    t.boolean  "school_show_menu2",       :default => false
    t.boolean  "school_show_overfooter",  :default => false
    t.boolean  "school_show_footer",      :default => false
    t.boolean  "school_show_underfooter", :default => false
    t.boolean  "school_show_credits",     :default => true
    t.string   "auth_meta_title"
    t.string   "auth_meta_dscr"
    t.string   "auth_meta_keywords"
    t.string   "auth_meta_author"
    t.string   "auth_meta_robots"
    t.string   "auth_favicon"
    t.boolean  "auth_show_userbar",       :default => false
    t.boolean  "auth_show_overheader",    :default => false
    t.boolean  "auth_show_header",        :default => true
    t.boolean  "auth_show_underheader",   :default => false
    t.boolean  "auth_show_nav1",          :default => false
    t.boolean  "auth_show_nav2",          :default => false
    t.boolean  "auth_show_menu1",         :default => false
    t.boolean  "auth_show_menu2",         :default => false
    t.boolean  "auth_show_overfooter",    :default => false
    t.boolean  "auth_show_footer",        :default => false
    t.boolean  "auth_show_underfooter",   :default => false
    t.boolean  "auth_show_credits",       :default => true
    t.string   "after_login_path",        :default => "/pages"
    t.string   "after_logout_path",       :default => "/users/sign_in"
    t.string   "user_meta_title"
    t.string   "user_meta_dscr"
    t.string   "user_meta_keywords"
    t.string   "user_meta_author"
    t.string   "user_meta_robots"
    t.string   "user_favicon"
    t.boolean  "user_show_userbar",       :default => true
    t.boolean  "user_show_overheader",    :default => false
    t.boolean  "user_show_header",        :default => true
    t.boolean  "user_show_underheader",   :default => false
    t.boolean  "user_show_nav1",          :default => true
    t.boolean  "user_show_nav2",          :default => false
    t.boolean  "user_show_menu1",         :default => false
    t.boolean  "user_show_menu2",         :default => false
    t.boolean  "user_show_overfooter",    :default => false
    t.boolean  "user_show_footer",        :default => false
    t.boolean  "user_show_underfooter",   :default => false
    t.boolean  "user_show_credits",       :default => true
    t.boolean  "admin_enable",            :default => true
    t.boolean  "admin_requires_auth",     :default => true
    t.string   "admin_meta_title",        :default => "Admin Area"
    t.string   "admin_meta_dscr"
    t.string   "admin_meta_keywords"
    t.string   "admin_meta_author"
    t.string   "admin_meta_robots"
    t.string   "admin_favicon"
    t.boolean  "admin_show_userbar",      :default => true
    t.boolean  "admin_show_overheader",   :default => false
    t.boolean  "admin_show_header",       :default => true
    t.boolean  "admin_show_underheader",  :default => false
    t.boolean  "admin_show_nav1",         :default => false
    t.boolean  "admin_show_nav2",         :default => false
    t.boolean  "admin_show_menu1",        :default => false
    t.boolean  "admin_show_menu2",        :default => false
    t.boolean  "admin_show_overfooter",   :default => false
    t.boolean  "admin_show_footer",       :default => false
    t.boolean  "admin_show_underfooter",  :default => false
    t.boolean  "admin_show_credits",      :default => true
    t.boolean  "paypal_enabled",          :default => false
    t.string   "paypal_url"
    t.string   "paypal_login"
    t.string   "paypal_password"
    t.string   "paypal_signature"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                                                          :null => false
    t.datetime "updated_at",                                                          :null => false
  end

  create_table "blog_tags", :force => true do |t|
    t.integer  "blog_id"
    t.integer  "tag_id"
    t.integer  "position",   :default => 0
    t.boolean  "active",     :default => true
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "blogs", :force => true do |t|
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.text     "abstract"
    t.text     "p_abstract"
    t.text     "p1_abstract"
    t.text     "content"
    t.text     "p_content"
    t.text     "p1_content"
    t.string   "tags_str"
    t.integer  "app_segment_id", :default => 4
    t.integer  "position",       :default => 0
    t.boolean  "published",      :default => false
    t.boolean  "active",         :default => true
    t.datetime "publish_date"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "categories", :force => true do |t|
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.boolean  "active",      :default => true
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "user_name"
    t.string   "user_email"
    t.string   "user_website"
    t.integer  "owner_id",     :default => 0
    t.string   "owner_type"
    t.string   "owner_code"
    t.string   "owner_name"
    t.string   "owner_title"
    t.string   "subject"
    t.text     "content"
    t.integer  "parent_id",    :default => 0
    t.integer  "position",     :default => 0
    t.boolean  "active",       :default => true
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "courses", :force => true do |t|
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "price",          :default => 2500
    t.text     "abstract"
    t.text     "content"
    t.text     "scripts"
    t.text     "styles"
    t.integer  "lectures_n",     :default => 0
    t.integer  "p_price",        :default => 0
    t.text     "p_abstract"
    t.text     "p_content"
    t.text     "p_scripts"
    t.text     "p_styles"
    t.integer  "p1_price",       :default => 0
    t.text     "p1_abstract"
    t.text     "p1_content"
    t.text     "p1_scripts"
    t.text     "p1_styles"
    t.string   "instructor"
    t.string   "section_id"
    t.integer  "app_segment_id", :default => 7
    t.integer  "position",       :default => 0
    t.integer  "calc_pos",       :default => 0
    t.boolean  "published",      :default => false
    t.boolean  "active",         :default => true
    t.datetime "publish_date"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "active_days",    :default => 365
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "css_styles", :force => true do |t|
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.text     "styles"
    t.text     "p_styles"
    t.text     "p1_styles"
    t.integer  "app_segment_id", :default => 1
    t.integer  "position",       :default => 0
    t.integer  "calc_pos",       :default => 0
    t.boolean  "published",      :default => false
    t.boolean  "active",         :default => true
    t.datetime "publish_date"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "document_attachments", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "app_id"
    t.integer  "user_id"
    t.integer  "document_id"
    t.string   "attached_document_file_name"
    t.string   "attached_document_content_type"
    t.integer  "attached_document_file_size",    :default => 0
    t.integer  "position",                       :default => 0
    t.boolean  "active",                         :default => true
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "documents", :force => true do |t|
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.text     "abstract"
    t.text     "content"
    t.string   "url"
    t.text     "p_abstract"
    t.text     "p_content"
    t.string   "p_url"
    t.text     "p1_abstract"
    t.text     "p1_content"
    t.string   "p1_url"
    t.integer  "position",     :default => 0
    t.boolean  "published",    :default => false
    t.boolean  "active",       :default => true
    t.datetime "publish_date"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "emails", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "user_name"
    t.string   "user_email"
    t.string   "user_website"
    t.integer  "owner_id",     :default => 0
    t.string   "owner_type"
    t.string   "owner_code"
    t.string   "owner_name"
    t.string   "owner_title"
    t.string   "subject"
    t.text     "content"
    t.integer  "position",     :default => 0
    t.boolean  "active",       :default => true
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "enrollments", :force => true do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.string   "user_name"
    t.string   "user_email"
    t.string   "reference_email"
    t.integer  "price",           :default => 0
    t.boolean  "paid",            :default => false
    t.boolean  "approved",        :default => false
    t.string   "cc_name"
    t.string   "cc_type"
    t.string   "cc_number"
    t.string   "cc_cvs"
    t.string   "cc_date"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "image_attachments", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "app_id"
    t.integer  "user_id"
    t.integer  "image_id"
    t.string   "attached_image_file_name"
    t.string   "attached_image_content_type"
    t.integer  "attached_image_file_size",    :default => 0
    t.integer  "position",                    :default => 0
    t.boolean  "active",                      :default => true
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "images", :force => true do |t|
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.text     "caption"
    t.string   "url"
    t.text     "p_caption"
    t.string   "p_url"
    t.text     "p1_caption"
    t.string   "p1_url"
    t.integer  "position",     :default => 0
    t.boolean  "published",    :default => false
    t.boolean  "active",       :default => true
    t.datetime "publish_date"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "js_scripts", :force => true do |t|
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.text     "scripts"
    t.text     "p_scripts"
    t.text     "p1_scripts"
    t.integer  "app_segment_id", :default => 1
    t.integer  "position",       :default => 0
    t.integer  "calc_pos",       :default => 0
    t.boolean  "published",      :default => false
    t.boolean  "active",         :default => true
    t.datetime "publish_date"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "lectures", :force => true do |t|
    t.integer  "course_id"
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.text     "abstract"
    t.text     "content"
    t.text     "p_abstract"
    t.text     "p_content"
    t.text     "p1_abstract"
    t.text     "p1_content"
    t.integer  "app_segment_id", :default => 7
    t.integer  "position",       :default => 0
    t.integer  "calc_pos",       :default => 0
    t.boolean  "published",      :default => false
    t.boolean  "active",         :default => true
    t.datetime "publish_date"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "pages", :force => true do |t|
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.string   "meta_title"
    t.string   "meta_dscr"
    t.string   "meta_keywords"
    t.string   "meta_author"
    t.string   "meta_robots"
    t.text     "abstract"
    t.text     "content"
    t.text     "scripts"
    t.text     "styles"
    t.integer  "layout_id",       :default => 0
    t.string   "redirect_url"
    t.text     "p_abstract"
    t.text     "p_content"
    t.text     "p_scripts"
    t.text     "p_styles"
    t.integer  "p_layout_id",     :default => 0
    t.string   "p_redirect_url"
    t.text     "p1_abstract"
    t.text     "p1_content"
    t.text     "p1_scripts"
    t.text     "p1_styles"
    t.integer  "p1_layout_id",    :default => 0
    t.string   "p1_redirect_url"
    t.integer  "app_segment_id",  :default => 1
    t.integer  "position",        :default => 0
    t.boolean  "published",       :default => false
    t.boolean  "active",          :default => true
    t.datetime "publish_date"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "product_categories", :force => true do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.integer  "position",    :default => 0
    t.boolean  "active",      :default => true
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "product_documents", :force => true do |t|
    t.integer  "product_id"
    t.integer  "document_id"
    t.integer  "position",    :default => 0
    t.boolean  "active",      :default => true
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "product_images", :force => true do |t|
    t.integer  "product_id"
    t.integer  "image_id"
    t.integer  "position",   :default => 0
    t.boolean  "active",     :default => true
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "product_videos", :force => true do |t|
    t.integer  "product_id"
    t.integer  "video_id"
    t.integer  "position",   :default => 0
    t.boolean  "active",     :default => true
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "meta_title"
    t.string   "meta_dscr"
    t.string   "meta_keywords"
    t.string   "meta_author"
    t.string   "meta_robots"
    t.text     "abstract"
    t.text     "p_abstract"
    t.text     "p1_abstract"
    t.text     "content"
    t.text     "p_content"
    t.text     "p1_content"
    t.integer  "price",          :default => 0
    t.integer  "p_price",        :default => 0
    t.integer  "p1_price",       :default => 0
    t.string   "options_str"
    t.string   "p_options_str"
    t.string   "p1_options_str"
    t.string   "categories_str"
    t.string   "images_str"
    t.integer  "app_segment_id", :default => 5
    t.integer  "position",       :default => 0
    t.boolean  "published",      :default => false
    t.boolean  "active",         :default => true
    t.datetime "publish_date"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "quiz_id"
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.text     "abstract"
    t.text     "content"
    t.text     "question_text"
    t.string   "answer_a"
    t.string   "answer_b"
    t.string   "answer_c"
    t.string   "answer_d"
    t.string   "answer_e"
    t.string   "answer_f"
    t.boolean  "correct_a",        :default => false
    t.boolean  "correct_b",        :default => false
    t.boolean  "correct_c",        :default => false
    t.boolean  "correct_d",        :default => false
    t.boolean  "correct_e",        :default => false
    t.boolean  "correct_f",        :default => false
    t.string   "correct_str"
    t.text     "p_abstract"
    t.text     "p_content"
    t.text     "p_question_text"
    t.string   "p_answer_a"
    t.string   "p_answer_b"
    t.string   "p_answer_c"
    t.string   "p_answer_d"
    t.string   "p_answer_e"
    t.string   "p_answer_f"
    t.boolean  "p_correct_a",      :default => false
    t.boolean  "p_correct_b",      :default => false
    t.boolean  "p_correct_c",      :default => false
    t.boolean  "p_correct_d",      :default => false
    t.boolean  "p_correct_e",      :default => false
    t.boolean  "p_correct_f",      :default => false
    t.string   "p_correct_str"
    t.text     "p1_abstract"
    t.text     "p1_content"
    t.text     "p1_question_text"
    t.string   "p1_answer_a"
    t.string   "p1_answer_b"
    t.string   "p1_answer_c"
    t.string   "p1_answer_d"
    t.string   "p1_answer_e"
    t.string   "p1_answer_f"
    t.boolean  "p1_correct_a",     :default => false
    t.boolean  "p1_correct_b",     :default => false
    t.boolean  "p1_correct_c",     :default => false
    t.boolean  "p1_correct_d",     :default => false
    t.boolean  "p1_correct_e",     :default => false
    t.boolean  "p1_correct_f",     :default => false
    t.string   "p1_correct_str"
    t.integer  "display_id",       :default => 1
    t.integer  "app_segment_id",   :default => 7
    t.integer  "position",         :default => 0
    t.integer  "calc_pos",         :default => 0
    t.boolean  "published",        :default => false
    t.boolean  "active",           :default => true
    t.datetime "publish_date"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "quizzes", :force => true do |t|
    t.integer  "lecture_id"
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "questions_n",    :default => 0
    t.text     "abstract"
    t.text     "content"
    t.text     "p_abstract"
    t.text     "p_content"
    t.text     "p1_abstract"
    t.text     "p1_content"
    t.integer  "app_segment_id", :default => 7
    t.integer  "position",       :default => 0
    t.integer  "calc_pos",       :default => 0
    t.boolean  "published",      :default => false
    t.boolean  "active",         :default => true
    t.datetime "publish_date"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "snipplets", :force => true do |t|
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.text     "content"
    t.text     "scripts"
    t.text     "styles"
    t.text     "p_content"
    t.text     "p_scripts"
    t.text     "p_styles"
    t.text     "p1_content"
    t.text     "p1_scripts"
    t.text     "p1_styles"
    t.integer  "app_segment_id", :default => 1
    t.integer  "position",       :default => 0
    t.boolean  "published",      :default => false
    t.boolean  "active",         :default => true
    t.datetime "publish_date"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "tags", :force => true do |t|
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.boolean  "active",      :default => true
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "user_courses", :force => true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "status_id"
    t.integer  "progress"
    t.integer  "attempts",        :default => 0
    t.string   "dates_taken"
    t.boolean  "passed",          :default => false
    t.string   "passed_str"
    t.boolean  "certificate",     :default => false
    t.boolean  "card",            :default => false
    t.date     "expiry_date"
    t.string   "reference_email"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "user_quizzes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "quiz_id"
    t.integer  "attempts",    :default => 0
    t.string   "dates_taken"
    t.boolean  "passed",      :default => false
    t.string   "passed_str"
    t.string   "answers_str"
    t.text     "dump"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email",                  :default => "",   :null => false
    t.string   "website"
    t.integer  "app_id"
    t.string   "encrypted_password",     :default => "",   :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.integer  "role_id",                :default => 0
    t.boolean  "active",                 :default => true
    t.boolean  "editable",               :default => true
    t.boolean  "deletable",              :default => true
    t.string   "line1"
    t.string   "line2"
    t.string   "city"
    t.string   "zip"
    t.string   "state"
    t.string   "country"
    t.integer  "creator_id"
    t.integer  "editor_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "versions", :force => true do |t|
    t.integer  "versioned_id"
    t.string   "versioned_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "user_name"
    t.text     "modifications"
    t.integer  "number"
    t.integer  "reverted_from"
    t.string   "tag"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "versions", ["created_at"], :name => "index_versions_on_created_at"
  add_index "versions", ["number"], :name => "index_versions_on_number"
  add_index "versions", ["tag"], :name => "index_versions_on_tag"
  add_index "versions", ["user_id", "user_type"], :name => "index_versions_on_user_id_and_user_type"
  add_index "versions", ["user_name"], :name => "index_versions_on_user_name"
  add_index "versions", ["versioned_id", "versioned_type"], :name => "index_versions_on_versioned_id_and_versioned_type"

  create_table "video_attachments", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "app_id"
    t.integer  "user_id"
    t.integer  "video_id"
    t.string   "attached_video_file_name"
    t.string   "attached_video_content_type"
    t.integer  "attached_video_file_size",    :default => 0
    t.integer  "position",                    :default => 0
    t.boolean  "active",                      :default => true
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "videos", :force => true do |t|
    t.integer  "app_id"
    t.integer  "user_id"
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.text     "caption"
    t.string   "url"
    t.string   "youtube"
    t.text     "p_caption"
    t.string   "p_url"
    t.string   "p_youtube"
    t.text     "p1_caption"
    t.string   "p1_url"
    t.string   "p1_youtube"
    t.integer  "position",     :default => 0
    t.boolean  "published",    :default => false
    t.boolean  "active",       :default => true
    t.datetime "publish_date"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "creator_id"
    t.integer  "editor_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

end
