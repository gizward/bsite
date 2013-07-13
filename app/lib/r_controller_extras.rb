module RControllerExtras
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

  def publish
    @object = model_name.find(params[:id])
    @object.publish
    redirect_to(@object, :notice => 'Object was successfully published.')
  end

  def revert_to_p1
    @object = model_name.find(params[:id])
    @object.revert_to_p
    redirect_to(@object, :notice => 'Object was successfully reverted to last Published state.')
  end

  def revert_to_p
    @object = model_name.find(params[:id])
    @object.revert_to_p1
    redirect_to(@object, :notice => 'Object was successfully reverted to Published state.')
  end

  def delete
    @object = model_name.find(params[:id])
    @object.destroy
    redirect_to("/#{model_sym.to_s.pluralize}", :notice => 'Object deleted.')
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end