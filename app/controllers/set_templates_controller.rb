class SetTemplatesController < ApplicationController
  # GET /set_templates
  # GET /set_templates.json
  def index
    @set_templates = SetTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @set_templates }
    end
  end

  # GET /set_templates/1
  # GET /set_templates/1.json
  def show
    @set_template = SetTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @set_template }
    end
  end

  # GET /set_templates/new
  # GET /set_templates/new.json
  def new
    @set_template = SetTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @set_template }
    end
  end

  # GET /set_templates/1/edit
  def edit
    @set_template = SetTemplate.find(params[:id])
  end

  # POST /set_templates
  # POST /set_templates.json
  def create
    @set_template = SetTemplate.new(params[:set_template])

    respond_to do |format|
      if @set_template.save
        format.html { redirect_to @set_template, :notice => 'Set template was successfully created.' }
        format.json { render :json => @set_template, :status => :created, :location => @set_template }
      else
        format.html { render :action => "new" }
        format.json { render :json => @set_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /set_templates/1
  # PUT /set_templates/1.json
  def update
    @set_template = SetTemplate.find(params[:id])

    respond_to do |format|
      if @set_template.update_attributes(params[:set_template])
        format.html { redirect_to @set_template, :notice => 'Set template was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @set_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /set_templates/1
  # DELETE /set_templates/1.json
  def destroy
    @set_template = SetTemplate.find(params[:id])
    @set_template.destroy

    respond_to do |format|
      format.html { redirect_to set_templates_url }
      format.json { head :ok }
    end
  end
end
