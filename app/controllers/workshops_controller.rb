class WorkshopsController < ApplicationController
  # GET /workshops
  # GET /workshops.xml
    
    record_select :per_page => 5,
    :search_on => ['parish'],
    :full_text_search => true
  # GET /workshops/1
  # GET /workshops/1.xml
  def show
    @workshop = Workshop.find(params[:id])
    @parish = Parish.find(:all)
    @course = Course.find(:all)
    @rel = WorkshopCourseType.searchByWork(@workshop.id)
    @parish1 = Parish.find(@workshop.parish_id)
    @vicariou = Vicariou.find(@parish1.vicariou_id)
    @pastor = Pastor.find(@parish1.pastor_id)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @workshop }
      format.xls
    end
  end

  # GET /workshops/new
  # GET /workshops/new.xml
  def new
    @workshop = Workshop.new
    @parish = Parish.all(:select => "parish_name,id",:conditions=> ["id not in (select parish_id from workshops) and state=true"])
    @course = Course.all(:select => "name")

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @workshop }
    end
  end

  # GET /workshops/1/edit
  def edit
    @workshop = Workshop.find(params[:id])
    @parish = Parish.find(:all)
    @course = Course.all(:all)
    @rel = WorkshopCourseType.searchByWork(@workshop.id)
    @parish1 = Parish.find(@workshop.parish_id)
    @vicariou = Vicariou.find(@parish1.vicariou_id)
    @pastor = Pastor.find(@parish1.pastor_id)
  end

  # POST /workshops
  # POST /workshops.xml
  def create
    @workshop = Workshop.new(params[:workshop])

    respond_to do |format|
      if @workshop.save
        format.html { redirect_to(@workshop, :notice => 'Workshop was successfully created.') }
        format.xml  { render :xml => @workshop, :status => :created, :location => @workshop }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @workshop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workshops/1
  # PUT /workshops/1.xml
  def update
    @workshop = Workshop.find(params[:id])
    courses_types_ids = params[:s2]

    respond_to do |format|
      if @workshop.update_attributes(params[:workshop])
        if(courses_types_ids)
          courses_types_ids.each do |id|
            @coursesAsigned= WorkshopCourseType.new(:id_course_type => id, :id_workshop => @workshop.id)
            @coursesAsigned.save
          end
        end
        format.html { redirect_to(@workshop, :notice => 'Workshop was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workshop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workshops/1
  # DELETE /workshops/1.xml
  def destroy
    @workshop = Workshop.find(params[:id])
    @workshop.destroy

    respond_to do |format|
      format.html { redirect_to(workshops_url) }
      format.xml  { head :ok }
    end
  end
end
