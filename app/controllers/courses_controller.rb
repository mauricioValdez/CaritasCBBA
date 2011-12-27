class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.xml
  def index
    @courses = Course.findf(params[:course_type], params[:workshop])    
    @courses_report=Course.finda(params[:report])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @courses }
      format.xls
    end
  end

  # GET /courses/1
  # GET /courses/1.xml
  def show
    @course = Course.find(params[:id])
    @volunteers = Volunteer.all(:select => "name,last_name",:conditions=> ["id in (select volunteer_id from assistance_lists where course_id= ?)","#{@course.id}"])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.xml
  def new
    if(params[:workshop_code])
    @course = Course.new(:workshop_id=>params[:workshop_code],:courses_types_id=>params[:course_type_code])
    end
    @volunteers = Volunteer.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @course }
    end
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
    @volunteers = Volunteer.find(:all)
    
    @volunteers_checked = Volunteer.all(:select => "id,name,last_name",:conditions=> ["id in (select volunteer_id from assistance_lists where course_id= ?)","#{@course.id}"])
    @volunteers_not_checked = Volunteer.all(:select => "id,name,last_name",:conditions=> ["id not in (select volunteer_id from assistance_lists where course_id= ?)","#{@course.id}"])
  end

  # POST /courses
  # POST /courses.xml
  def create
    @course = Course.new(params[:course])
    volunteers_ids = params[:lista_voluntarios]
    
    respond_to do |format|
      if @course.save    
        if volunteers_ids != nil
          volunteers_ids.each do |id|
            @assistence = AssistanceList.new( :volunteer_id => id , :course_id => @course.id)          
            @assistence.save
          end
        end
        
        format.html { redirect_to(@course, :notice => 'Course was successfully created.') }
        format.xml  { render :xml => @course, :status => :created, :location => @course }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.xml
  def update
    @course = Course.find(params[:id])
    volunteers_ids = params[:lista_voluntarios]    
    volunteers_checked = AssistanceList.all(:select => "id",:conditions=> ["id in (select id from assistance_lists where course_id= ?)","#{@course.id}"])    
    
    respond_to do |format|
      if @course.update_attributes(params[:course])
        if volunteers_checked != nil
          volunteers_checked.each do |id|
          @assistence = AssistanceList.find(id)
          @assistence.destroy
        end
        end        
        
        if volunteers_ids != nil
          volunteers_ids.each do |id|
            @assistence = AssistanceList.new( :volunteer_id => id , :course_id => @course.id)          
            @assistence.save
          end
        end
        
        format.html { redirect_to(@course, :notice => 'Course was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.xml
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to(courses_url) }
      format.xml  { head :ok }
    end
  end
end
