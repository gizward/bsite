class AddStuffToUsers < ActiveRecord::Migration
  def change

      #--- roles
      add_column :users,  :role_id,          :integer, :default => 0 # 0=visitor, 1=contributor, 2=customer, 3=student, 4=admin, 5=developer
      
      #--- flags
      add_column :users,  :active,           :boolean, :default => true
      add_column :users,  :editable,         :boolean, :default => true
      add_column :users,  :deletable,        :boolean, :default => true
      
      #--- address
      add_column :users,  :line1,            :string,  :default => nil
      add_column :users,  :line2,            :string,  :default => nil
      add_column :users,  :city,             :string,  :default => nil
      add_column :users,  :zip,              :string,  :default => nil
      add_column :users,  :state,            :string,  :default => nil
      add_column :users,  :country,          :string,  :default => nil

      add_column :users,  :creator_id,       :integer, :default => nil
      add_column :users,  :editor_id,        :integer, :default => nil

  end
end
