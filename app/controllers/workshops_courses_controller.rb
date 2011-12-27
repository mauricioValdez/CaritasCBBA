class WorkshopsCoursesController < ApplicationController
  # GET /workshops_courses
  # GET /workshops_courses.xml
  def index
    @workshops_courses = WorkshopsCourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workshops_courses }
    end
  end

  # GET /workshops_courses/1
  # GET /workshops_courses/1.xml
  def show
    @workshops_course = WorkshopsCourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @workshops_course }
    end
  end

  # GET /workshops_courses/new
  # GET /workshops_courses/new.xml
  def new
    @workshops_course = WorkshopsCourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @workshops_course }
    end
  end

  # GET /workshops_courses/1/edit
  def edit
    @workshops_course = WorkshopsCourse.find(params[:id])
  end

  # POST /workshops_courses
  # POST /workshops_courses.xml
  def create
    @workshops_course = WorkshopsCourse.new(params[:workshops_course])

    respond_to do |format|
      if @workshops_course.save
        format.html { redirect_to(@workshops_course, :notice => 'WorkshopsCourse was successfully created.') }
        format.xml  { render :xml => @workshops_course, :status => :created, :location => @workshops_course }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @workshops_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workshops_courses/1
  # PUT /workshops_courses/1.xml
  def update
    @workshops_course = WorkshopsCourse.find(params[:id])

    respond_to do |format|
      if @workshops_course.update_attributes(params[:workshops_course])
        format.html { redirect_to(@workshops_course, :notice => 'WorkshopsCourse was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workshops_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workshops_courses/1
  # DELETE /workshops_courses/1.xml
  def destroy
    @workshops_course = WorkshopsCourse.find(params[:id])
    @workshops_course.destroy

    respond_to do |format|
      format.html { redirect_to(workshops_courses_url) }
      format.xml  { head :ok }
    end
  end
end
