class GroupsController < ApplicationController
  # GET /groups
  # GET /groups.xml
  def index
    @groups = Group.search(params[:search])    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @groups }
    end
  end

  # GET /groups/1
  # GET /groups/1.xml
  def show
    @group = Group.find(params[:id])
    @parish = Parish.find(@group.parish_id)
    #@parish = Parish.all(:select => "parish_name")
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @group }
    end
  end

  # GET /groups/new
  # GET /groups/new.xml
  def new
    @group = Group.new
    @parish = Parish.find(:all)
    @volunteers = Volunteer.all(:select => "id,name,last_name,second_last_name",:conditions=> ["id not in (select volunteer_id from groups)"])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @group }
    end
  end

  # GET /groups/1/edit
  def edit
    @group = Group.find(params[:id])
    @parish = Parish.find(:all)
    @volunteers = Volunteer.all(:select => "id,name,last_name,second_last_name",:conditions=> ["id not in (select volunteer_id from groups) or id= ?","#{@group.volunteer_id}"])
  end

  # POST /groups
  # POST /groups.xml
  def create
    @group = Group.new(params[:group])
    @parish = Parish.find(:all)
    @volunteers = Volunteer.find(:all)

    respond_to do |format|
      if @group.save
        format.html { redirect_to(@group, :notice => 'El grupo se creo correctamente.') }
        format.xml  { render :xml => @group, :status => :created, :location => @group }
        
        t = Group.find(@group.id)
        t.update_attributes(:state => true)
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groups/1
  # PUT /groups/1.xml
  def update
    @group = Group.find(params[:id])

    respond_to do |format|
      if @group.update_attributes(params[:group])
        format.html { redirect_to(@group, :notice => 'El grupo se modifico correctamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.xml
  def destroy
    @group = Group.find(params[:id])
    @group.state ? @group.update_attributes(:state => false) : @group.update_attributes(:state => true)    

    respond_to do |format|
      format.html { redirect_to(groups_url) }
      format.xml  { head :ok }
    end
  end
end
