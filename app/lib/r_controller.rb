module RController
#--------------------------------------------------------------------------------------------------------------------------------

  def model_name
    controller_name.singularize.camelize.constantize
  end
  def model_sym
    controller_name.singularize.to_sym
  end

#--------------------------------------------------------------------------------------------------------------------------------

  def index
    @filter = RFilter.new
    filter_settings
    @filter.adjust_for_parameters(params)
    
    @items_count = model_name.count(:conditions=>@filter.sql_conditions)
    @objects     = model_name.where(
      @conditions || @filter.sql_conditions).paginate(
      :page=>params[:page],:per_page=>(@perpage || @filter.perpage)).order(
      @sortorder || @filter.sql_sortorder)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @objects }
    end
  end
  
  def filter_settings
  end

#--------------------------------------------------------------------------------------------------------------------------------

  def show
    @filter = RFilter.new
    filter_settings
    @object = model_name.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @object }
    end
  end

#--------------------------------------------------------------------------------------------------------------------------------

  def new
    @object = model_name.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @object }
    end
  end

  def create
    @object = model_name.new(params[model_sym])

    respond_to do |format|
      if @object.save
        format.html { redirect_to(@object, :notice => 'Object was successfully created.') }
        format.xml  { render :xml => @object, :status => :created, :location => @object }
      else
        format.html { render :action => "new", :notice => 'Failed to create object.' }
        format.xml  { render :xml => @object.errors, :status => :unprocessable_entity }
      end
    end
  end

#--------------------------------------------------------------------------------------------------------------------------------

  def edit
    @object = model_name.find(params[:id])
  end

  def update
    @object = model_name.find(params[:id])

    respond_to do |format|
      if @object.update_attributes(params[model_sym])
        format.html { redirect_to(@object, :notice => 'Object was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit", :notice => 'Failed to update object.' }
        format.xml  { render :xml => @object.errors, :status => :unprocessable_entity }
      end
    end
  end

#--------------------------------------------------------------------------------------------------------------------------------

  def destroy
    @object = model_name.find(params[:id])
    @object.destroy

    respond_to do |format|
      format.html { redirect_to("/#{model_sym.to_s.pluralize}") }
      format.xml  { head :ok }
    end
  end

#--------------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------------
end
