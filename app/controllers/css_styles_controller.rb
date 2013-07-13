class CssStylesController < ApplicationController
#--------------------------------------------------------------------------------------------------------------------------------

  before_filter :authenticate_user!
  
  include RController
  include RControllerExtras
  
#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def filter_settings
    @filter.register_search_fields('id','code','name','title','description')
    @filter.register_dropdowns('app_segment_id')
    @filter.register_boolean_fields('active','published')
    @filter.set_sort_by_and_order('calc_pos','ASC')
    @filter.set_secondary_sort('position ASC')
  end

#--------------------------------------------------------------------------------------------------------------------------------
# generate edit_x and update_x pairs for various fields

  [:styles].each do |field|

    define_method("edit_#{field}") do
      @object = CssStyle.find(params[:id])
    end
  
    define_method("update_#{field}") do
      @object = CssStyle.find(params[:id])
      if @object.update_attributes(params[model_sym])
        EventLogger.log(current_user,@object,action_name)
        show_what = "?show[#{field}]=yes"
        show_what = '' if field==:roles
        redirect_to("/css_styles/#{@object.id}#{show_what}", :notice=>"Object's #{field} updated.")
      else
        render :action => "edit_#{field}"
      end
    end

  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
