class AppSettingsController < ApplicationController
#--------------------------------------------------------------------------------------------------------------------------------

  before_filter :authenticate_user!
  
  include RController
  
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def index
    @object = AppSetting.first 
    @filter = RFilter.new
    render :action=>:show, :id=>1
  end


#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
# generate edit_x and update_x pairs for various fields

  [:global,:home,:blog,:forum,:store,:school,:auth,:user,:admin].each do |field|

    define_method("edit_#{field}") do
      @object = AppSetting.find(params[:id])
    end
  
    define_method("update_#{field}") do
      @object = AppSetting.find(params[:id])
      if @object.update_attributes(params[model_sym])
        #EventLogger.log(current_user,@object,action_name)
        show_what = "?show[#{field}]=yes"
        show_what = '' if field==:roles
        redirect_to("/app_settings/#{@object.id}#{show_what}", :notice=>"Object's #{field} updated.")
      else
        render :action => "edit_#{field}"
      end
    end

  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
