class PastorsController < ApplicationController
  # GET /pastors
  # GET /pastors.xml
  
    record_select :per_page => 5,
    :search_on => ['name'],
    :full_text_search => true

  
  def index
    @pastors = Pastor.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pastors }
      format.xls
    end
  end

  # GET /pastors/1
  # GET /pastors/1.xml
  def show
    @pastor = Pastor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pastor }
    end
  end

  # GET /pastors/new
  # GET /pastors/new.xml
  def new
    @pastor = Pastor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pastor }
    end
  end

  # GET /pastors/1/edit
  def edit
    @pastor = Pastor.find(params[:id])
  end

  # POST /pastors
  # POST /pastors.xml
  def create
    @pastor = Pastor.new(params[:pastor])

    respond_to do |format|
      if @pastor.save
        format.html { redirect_to(@pastor, :notice => 'El párroco fué creado correctamente.') }
        format.xml  { render :xml => @pastor, :status => :created, :location => @pastor }
        
        t = Pastor.find(@pastor.id)
        t.update_attributes(:state => true)
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pastor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pastors/1
  # PUT /pastors/1.xml
  def update
    @pastor = Pastor.find(params[:id])

    respond_to do |format|
      if @pastor.update_attributes(params[:pastor])
        format.html { redirect_to(@pastor, :notice => 'El párroco se modificó correctamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pastor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pastors/1
  # DELETE /pastors/1.xml
  def destroy  
    
    @pastor = Pastor.find(params[:id])
    @pastor.update_attributes(:state => false) 

    respond_to do |format|
      format.html { redirect_to(pastors_url) }
      format.xml  { head :ok }
    end
  end
end
