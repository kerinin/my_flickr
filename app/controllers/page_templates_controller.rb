class PageTemplatesController < ApplicationController
  # GET /page_templates
  # GET /page_templates.json
  def index
    @page_templates = PageTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @page_templates }
    end
  end

  # GET /page_templates/1
  # GET /page_templates/1.json
  def show
    @page_template = PageTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @page_template }
    end
  end

  # GET /page_templates/new
  # GET /page_templates/new.json
  def new
    @page_template = PageTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @page_template }
    end
  end

  # GET /page_templates/1/edit
  def edit
    @page_template = PageTemplate.find(params[:id])
  end

  # POST /page_templates
  # POST /page_templates.json
  def create
    @page_template = PageTemplate.new(params[:page_template])

    respond_to do |format|
      if @page_template.save
        format.html { redirect_to @page_template, :notice => 'Page template was successfully created.' }
        format.json { render :json => @page_template, :status => :created, :location => @page_template }
      else
        format.html { render :action => "new" }
        format.json { render :json => @page_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /page_templates/1
  # PUT /page_templates/1.json
  def update
    @page_template = PageTemplate.find(params[:id])

    respond_to do |format|
      if @page_template.update_attributes(params[:page_template])
        format.html { redirect_to @page_template, :notice => 'Page template was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @page_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /page_templates/1
  # DELETE /page_templates/1.json
  def destroy
    @page_template = PageTemplate.find(params[:id])
    @page_template.destroy

    respond_to do |format|
      format.html { redirect_to page_templates_url }
      format.json { head :ok }
    end
  end
end
