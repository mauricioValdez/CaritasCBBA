class SocialCardsController < ApplicationController
  # GET /social_cards
  # GET /social_cards.xml
  def index

    @social_cards = SocialCard.search(params[:search])
    @parishes = Parish.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @social_cards }
    end
  end

  # GET /social_cards/1
  # GET /social_cards/1.xml
  def show
    @social_card = SocialCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @social_card }
    end
  end

  # GET /social_cards/new
  # GET /social_cards/new.xml
  def new
    @social_card = SocialCard.new
    @parishes = Parish.find(:all)
    
    #session[:social_card_params] ||= {}
    #@social_card=SocialCard.new(session[:social_card_params])
    #@social_card.current_step=session[:social_card_step]
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @social_card }
   end
  end

  # GET /social_cards/1/edit
  def edit
    @social_card = SocialCard.find(params[:id])
    @parishes = Parish.find(:all)
  end

  # POST /social_cards
  # POST /social_cards.xml
  def create
    @social_card = SocialCard.new(params[:social_card])
    @parishes = Parish.find(:all)

    respond_to do |format|
      if @social_card.save
        format.html { redirect_to(@social_card, :notice => 'La Ficha Social Fue Creada Exitosamente.') }
              format.xml  { render :xml => @social_card, :status => :created, :location => @social_card }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @social_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /social_cards/1
  # PUT /social_cards/1.xml
  def update
    @social_card = SocialCard.find(params[:id])

    respond_to do |format|
      if @social_card.update_attributes(params[:social_card])
        format.html { redirect_to(@social_card, :notice => 'La Ficha Social Fue Modificada Exitosamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @social_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /social_cards/1
  # DELETE /social_cards/1.xml
  def destroy
    @social_card = SocialCard.find(params[:id])
    @social_card.state ? @social_card.update_attributes(:state => false) : @social_card.update_attributes(:state => true)    

    respond_to do |format|
      format.html { redirect_to(social_cards_url) }
      format.xml  { head :ok }
    end
  end
end
