module RControllerExtrasLite
#--------------------------------------------------------------------------------------------------------------------------------

  def model_name
    controller_name.singularize.camelize.constantize
  end
  def model_sym
    controller_name.singularize.to_sym
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------

  def activate
    @object = model_name.find(params[:id])
    @object.activate
    msg = 'Object de-activated.'
    msg = 'Object activated.' if @object.active
    redirect_to(@object, :notice => msg)
  end

  def delete
    @object = model_name.find(params[:id])
    @object.destroy
    redirect_to("/#{model_sym.to_s.pluralize}", :notice => 'Object deleted.')
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end