class DocumentAttachmentsController < ApplicationController
#=======================================================================================
#=======================================================================================

  def index
    load_selection_lists_for_filter
    
    session[:section] = 'attachments'
    session[:action]  = 'attachments.documents'

    #--- set-up filters
    @filter = RFilter.new
    @filter.set_paginate(true)
    @filter.register_search_fields('id','name')
    @filter.set_sort_by_and_order("id","DESC")
    @filter.adjust_for_parameters(params)

    @items_count    = DocumentAttachment.count(:conditions=>@filter.sql_conditions)
    @document_attachments = DocumentAttachment.paginate(:all,:page=>params[:page],
      :per_page   => @filter.perpage,
      :order      => @filter.sql_sortorder,
      :conditions => @filter.sql_conditions,
      :include    => [:document]
    )
    respond_to do |format|
      format.html { render :layout => 'attachments' } # index.html.erb
      format.xml  { render :xml => @document_attachments }
    end
  end

#=======================================================================================

  def new
    @document_attachment = DocumentAttachment.new
    
    @document = Document.first(:conditions=>{:id=>params[:document_id]})
    @document_attachment.document_id = @document.id if @document

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @document_attachment }
    end
  end

  def create
    @document_attachment = DocumentAttachment.new(params[:document_attachment])
    @document = @document_attachment.document

    respond_to do |format|
      if @document_attachment.attached_document_file_name.blank?
        # don't save empty attachments
        flash[:notice] = failure('Document Attachment was NOT created.')
        format.html { redirect_to("/documents/#{@document_attachment.document_id}?show[files]=yes") }
      else
        if @document_attachment.save
          flash[:notice] = success('Document Attachment was created.')
          format.html { redirect_to("/documents/#{@document_attachment.document_id}?show[files]=yes") }
        else
          flash[:notice] = failure('Document Attachment was NOT created.')
          format.html { render :action => "new" }
        end
      end
    end
  end

#=======================================================================================
#=======================================================================================
end
