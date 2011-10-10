class ImageTemplatesController < ApplicationController
  # GET /image_templates
  # GET /image_templates.json
  def index
    @image_templates = ImageTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @image_templates }
    end
  end

  # GET /image_templates/1
  # GET /image_templates/1.json
  def show
    @image_template = ImageTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @image_template }
    end
  end

  # GET /image_templates/new
  # GET /image_templates/new.json
  def new
    @image_template = ImageTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @image_template }
    end
  end

  # GET /image_templates/1/edit
  def edit
    @image_template = ImageTemplate.find(params[:id])
  end

  # POST /image_templates
  # POST /image_templates.json
  def create
    @image_template = ImageTemplate.new(params[:image_template])

    respond_to do |format|
      if @image_template.save
        format.html { redirect_to @image_template, :notice => 'Image template was successfully created.' }
        format.json { render :json => @image_template, :status => :created, :location => @image_template }
      else
        format.html { render :action => "new" }
        format.json { render :json => @image_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /image_templates/1
  # PUT /image_templates/1.json
  def update
    @image_template = ImageTemplate.find(params[:id])

    respond_to do |format|
      if @image_template.update_attributes(params[:image_template])
        format.html { redirect_to @image_template, :notice => 'Image template was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @image_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /image_templates/1
  # DELETE /image_templates/1.json
  def destroy
    @image_template = ImageTemplate.find(params[:id])
    @image_template.destroy

    respond_to do |format|
      format.html { redirect_to image_templates_url }
      format.json { head :ok }
    end
  end
end
