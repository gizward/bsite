class ImageAttachmentsController < ApplicationController
#=======================================================================================
#=======================================================================================

  def index
    load_selection_lists_for_filter
    
    session[:section] = 'attachments'
    session[:action]  = 'attachments.images'

    #--- set-up filters
    @filter = RFilter.new
    @filter.set_paginate(true)
    @filter.register_search_fields('id','name')
    @filter.set_sort_by_and_order("id","DESC")
    @filter.adjust_for_parameters(params)

    @items_count    = ImageAttachment.count(:conditions=>@filter.sql_conditions)
    @image_attachments = ImageAttachment.paginate(:all,:page=>params[:page],
      :per_page   => @filter.perpage,
      :order      => @filter.sql_sortorder,
      :conditions => @filter.sql_conditions,
      :include    => [:image]
    )
    respond_to do |format|
      format.html { render :layout => 'attachments' } # index.html.erb
      format.xml  { render :xml => @image_attachments }
    end
  end

#=======================================================================================

  def new
    @image_attachment = ImageAttachment.new
    
    @image = Image.first(:conditions=>{:id=>params[:image_id]})
    @image_attachment.image_id = @image.id if @image

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image_attachment }
    end
  end

  def create
    @image_attachment = ImageAttachment.new(params[:image_attachment])
    @image = @image_attachment.image

    respond_to do |format|
      if @image_attachment.attached_image_file_name.blank?
        # don't save empty attachments
        flash[:notice] = failure('Image Attachment was NOT created.')
        format.html { redirect_to("/images/#{@image_attachment.image_id}?show[files]=yes") }
      else
        if @image_attachment.save
          flash[:notice] = success('Image Attachment was created.')
          format.html { redirect_to("/images/#{@image_attachment.image_id}?show[files]=yes") }
        else
          flash[:notice] = failure('Image Attachment was NOT created.')
          format.html { render :action => "new" }
        end
      end
    end
  end

#=======================================================================================
#=======================================================================================
end
