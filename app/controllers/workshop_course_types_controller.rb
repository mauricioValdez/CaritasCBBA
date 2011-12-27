class WorkshopCourseTypesController < ApplicationController
  # GET /workshop_course_types
  # GET /workshop_course_types.xml
  def index
    @workshop_course_types = WorkshopCourseType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workshop_course_types }
    end
  end

  # GET /workshop_course_types/1
  # GET /workshop_course_types/1.xml
  def show
    @workshop_course_type = WorkshopCourseType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @workshop_course_type }
    end
  end

  # GET /workshop_course_types/new
  # GET /workshop_course_types/new.xml
  def new
    @workshop_course_type = WorkshopCourseType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @workshop_course_type }
    end
  end

  # GET /workshop_course_types/1/edit
  def edit
    @workshop_course_type = WorkshopCourseType.find(params[:id])
  end

  # POST /workshop_course_types
  # POST /workshop_course_types.xml
  def create
    @workshop_course_type = WorkshopCourseType.new(params[:workshop_course_type])

    respond_to do |format|
      if @workshop_course_type.save
        format.html { redirect_to(@workshop_course_type, :notice => 'WorkshopCourseType was successfully created.') }
        format.xml  { render :xml => @workshop_course_type, :status => :created, :location => @workshop_course_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @workshop_course_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workshop_course_types/1
  # PUT /workshop_course_types/1.xml
  def update
    @workshop_course_type = WorkshopCourseType.find(params[:id])

    respond_to do |format|
      if @workshop_course_type.update_attributes(params[:workshop_course_type])
        format.html { redirect_to(@workshop_course_type, :notice => 'WorkshopCourseType was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workshop_course_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workshop_course_types/1
  # DELETE /workshop_course_types/1.xml
  def destroy
    @workshop_course_type = WorkshopCourseType.find(params[:id])
    @workshop_course_type.destroy

    respond_to do |format|
      format.html { redirect_to(workshop_course_types_url) }
      format.xml  { head :ok }
    end
  end
end
