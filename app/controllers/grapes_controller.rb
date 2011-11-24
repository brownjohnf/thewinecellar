class GrapesController < ApplicationController
  # GET /grapes
  # GET /grapes.xml
  def index
    @grapes = Grape.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @grapes }
    end
  end

  # GET /grapes/1
  # GET /grapes/1.xml
  def show
    @grape = Grape.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @grape }
    end
  end

  # GET /grapes/new
  # GET /grapes/new.xml
  def new
    @grape = Grape.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @grape }
    end
  end

  # GET /grapes/1/edit
  def edit
    @grape = Grape.find(params[:id])
  end

  # POST /grapes
  # POST /grapes.xml
  def create
    @grape = Grape.new(params[:grape])

    respond_to do |format|
      if @grape.save
        format.html { redirect_to(@grape, :notice => 'Grape was successfully created.') }
        format.xml  { render :xml => @grape, :status => :created, :location => @grape }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @grape.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /grapes/1
  # PUT /grapes/1.xml
  def update
    @grape = Grape.find(params[:id])

    respond_to do |format|
      if @grape.update_attributes(params[:grape])
        format.html { redirect_to(@grape, :notice => 'Grape was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @grape.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /grapes/1
  # DELETE /grapes/1.xml
  def destroy
    @grape = Grape.find(params[:id])
    @grape.destroy

    respond_to do |format|
      format.html { redirect_to(grapes_url) }
      format.xml  { head :ok }
    end
  end
end
