class CoursesTypesController < ApplicationController
  # GET /courses_types
  # GET /courses_types.xml
  def index
    @courses_types = CoursesType.search(params[:search]).sort{ |a,b| a.name.downcase <=> b.name.downcase  } 

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @courses_types }
    end
  end

  # GET /courses_types/1
  # GET /courses_types/1.xml
  def show
    @courses_type = CoursesType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @courses_type }
    end
  end

  # GET /courses_types/new
  # GET /courses_types/new.xml
  def new
    @courses_type = CoursesType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @courses_type }
    end
  end

  # GET /courses_types/1/edit
  def edit
    @courses_type = CoursesType.find(params[:id])
  end

  # POST /courses_types
  # POST /courses_types.xml
  def create
    @courses_type = CoursesType.new(params[:courses_type])

    respond_to do |format|
      if @courses_type.save
        format.html { redirect_to(@courses_type, :notice => 'CoursesType was successfully created.') }
        format.xml  { render :xml => @courses_type, :status => :created, :location => @courses_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @courses_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /courses_types/1
  # PUT /courses_types/1.xml
  def update
    @courses_type = CoursesType.find(params[:id])

    respond_to do |format|
      if @courses_type.update_attributes(params[:courses_type])
        format.html { redirect_to(@courses_type, :notice => 'CoursesType was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @courses_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /courses_types/1
  # DELETE /courses_types/1.xml
  def destroy
    @courses_type = CoursesType.find(params[:id])
    @courses_type.destroy

    respond_to do |format|
      format.html { redirect_to(courses_types_url) }
      format.xml  { head :ok }
    end
  end
end
