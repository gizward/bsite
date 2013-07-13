Rsite::Application.routes.draw do

  devise_for :user, :controllers=>{:sessions=>'sessions',:registrations=>'registrations',:passwords=>'passwords'} do
    get '/user/sign_out' => 'devise/sessions#destroy'    
  end
  
  resources :home do
    collection do
      get :contact
      post :contact_submit
      get :contact_thankyou
    end
  end
  resources :blog
  resources :forum
  resources :store
  resources :school do 
    member do
      get  :lecture
      get  :quiz
      put  :quiz_submit
      get  :quiz_thankyou
      get  :enroll
      post :enroll_submit
      get  :enroll_thankyou
    end
  end
  resources :user do
    member do
      get :edit_password
      put :update_password
      get :courses
      get :enroll
      put :payment
    end
  end

  resources :tools do
    collection do
      get :seeds
      get :styles
    end
  end
  
  resources :images do
    member do 
      get  :edit_caption
      put  :update_caption
      get  :edit_files
      put  :update_files
      get  :activate
      get  :publish
      get  :revert_to_p
      get  :delete
    end
  end
  resources :image_attachments

  resources :videos do
    member do 
      get  :edit_caption
      put  :update_caption
      get  :edit_files
      put  :update_files
      get  :activate
      get  :publish
      get  :revert_to_p
      get  :delete
    end
  end
  resources :video_attachments

  resources :documents do
    member do 
      get  :edit_abstract
      put  :update_abstract
      get  :edit_content
      put  :update_content
      get  :activate
      get  :publish
      get  :revert_to_p
      get  :delete
    end
  end

  resources :emails
  resources :comments do
    member do 
      get  :activate
      get  :delete
    end
  end

  resources :app_errors
  resources :app_events
  resources :app_settings do 
    member do 
      get  :edit_global
      put  :update_global
      get  :edit_home
      put  :update_home
      get  :edit_blog
      put  :update_blog
      get  :edit_forum
      put  :update_forum
      get  :edit_store
      put  :update_store
      get  :edit_school
      put  :update_school
      get  :edit_auth
      put  :update_auth
      get  :edit_user
      put  :update_user
      get  :edit_admin
      put  :update_admin
    end
  end

  resources :users do
    member do 
      get  :edit_address
      post :update_address
      get  :edit_password
      post :update_password
      get  :activate
    end
  end


  resources :pages do
    member do 
      get  :edit_meta
      post :update_meta
      get  :edit_abstract
      put  :update_abstract
      get  :edit_content
      put  :update_content
      get  :edit_scripts
      put  :update_scripts
      get  :edit_styles
      put  :update_styles
      get  :activate
      get  :publish
      get  :revert_to_p1
      get  :revert_to_p
      get  :delete
    end
  end

  resources :snipplets do
    member do 
      get  :edit_content
      put  :update_content
      get  :edit_scripts
      put  :update_scripts
      get  :edit_styles
      put  :update_styles
      get  :activate
      get  :publish
      get  :revert_to_p1
      get  :revert_to_p
      get  :delete
    end
  end

  resources :css_styles do
    member do 
      get  :edit_styles
      put  :update_styles
      get  :activate
      get  :publish
      get  :revert_to_p1
      get  :revert_to_p
      get  :delete
    end
  end

  resources :js_scripts do
    member do 
      get  :edit_scripts
      put  :update_scripts
      get  :activate
      get  :publish
      get  :revert_to_p1
      get  :revert_to_p
      get  :delete
    end
  end

  resources :blogs do
    member do 
      get  :edit_abstract
      put  :update_abstract
      get  :edit_content
      put  :update_content
      get  :edit_tags
      put  :update_tags
      get  :activate
      get  :publish
      get  :revert_to_p1
      get  :revert_to_p
      get  :delete
    end
  end
  resources :tags do
    member do 
      get  :edit_blogs
      put  :update_blogs
      get  :activate
      get  :delete
    end
  end

  resources :courses do
    member do 
      get  :edit_abstract
      put  :update_abstract
      get  :edit_content
      put  :update_content
      get  :activate
      get  :publish
      get  :revert_to_p1
      get  :revert_to_p
      get  :delete
    end
  end

  resources :enrollments
  
  resources :lectures do
    member do 
      get  :edit_abstract
      put  :update_abstract
      get  :edit_content
      put  :update_content
      get  :activate
      get  :publish
      get  :revert_to_p1
      get  :revert_to_p
      get  :delete
    end
  end

  resources :quizzes do
    member do 
      get  :edit_abstract
      put  :update_abstract
      get  :edit_content
      put  :update_content
      get  :activate
      get  :publish
      get  :revert_to_p1
      get  :revert_to_p
      get  :delete
    end
  end

  resources :questions do
    member do 
      get  :edit_question
      put  :update_question
      get  :edit_abstract
      put  :update_abstract
      get  :edit_content
      put  :update_content
      get  :activate
      get  :publish
      get  :revert_to_p1
      get  :revert_to_p
      get  :delete
    end
  end


  resources :products do
    member do 
      get  :edit_abstract
      put  :update_abstract
      get  :edit_content
      put  :update_content
      get  :edit_categories
      put  :update_categories
      get  :activate
      get  :publish
      get  :revert_to_p1
      get  :revert_to_p
      get  :delete
    end
  end
  resources :categories do
    member do 
      get  :edit_products
      put  :update_products
      get  :activate
      get  :delete
    end
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
