class AssistanceListsController < ApplicationController
  # GET /assistance_lists
  # GET /assistance_lists.xml
  def index
    @assistance_lists = AssistanceList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @assistance_lists }
    end
  end

  # GET /assistance_lists/1
  # GET /assistance_lists/1.xml
  def show
    @assistance_list = AssistanceList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @assistance_list }
    end
  end

  # GET /assistance_lists/new
  # GET /assistance_lists/new.xml
  def new
    @assistance_list = AssistanceList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @assistance_list }
    end
  end

  # GET /assistance_lists/1/edit
  def edit
    @assistance_list = AssistanceList.find(params[:id])
  end

  # POST /assistance_lists
  # POST /assistance_lists.xml
  def create
    @assistance_list = AssistanceList.new(params[:assistance_list])

    respond_to do |format|
      if @assistance_list.save
        format.html { redirect_to(@assistance_list, :notice => 'AssistanceList was successfully created.') }
        format.xml  { render :xml => @assistance_list, :status => :created, :location => @assistance_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @assistance_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /assistance_lists/1
  # PUT /assistance_lists/1.xml
  def update
    @assistance_list = AssistanceList.find(params[:id])

    respond_to do |format|
      if @assistance_list.update_attributes(params[:assistance_list])
        format.html { redirect_to(@assistance_list, :notice => 'AssistanceList was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @assistance_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /assistance_lists/1
  # DELETE /assistance_lists/1.xml
  def destroy
    @assistance_list = AssistanceList.find(params[:id])
    @assistance_list.destroy

    respond_to do |format|
      format.html { redirect_to(assistance_lists_url) }
      format.xml  { head :ok }
    end
  end
end
