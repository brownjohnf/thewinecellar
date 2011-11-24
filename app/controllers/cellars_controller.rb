class CellarsController < ApplicationController
  # GET /cellars
  # GET /cellars.xml
  def index
    @cellars = Cellar.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cellars }
    end
  end

  # GET /cellars/1
  # GET /cellars/1.xml
  def show
    @cellar = Cellar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cellar }
    end
  end

  # GET /cellars/new
  # GET /cellars/new.xml
  def new
    @cellar = Cellar.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cellar }
    end
  end

  # GET /cellars/1/edit
  def edit
    @cellar = Cellar.find(params[:id])
  end

  # POST /cellars
  # POST /cellars.xml
  def create
    @cellar = Cellar.new(params[:cellar])

    respond_to do |format|
      if @cellar.save
        format.html { redirect_to(@cellar, :notice => 'Cellar was successfully created.') }
        format.xml  { render :xml => @cellar, :status => :created, :location => @cellar }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cellar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cellars/1
  # PUT /cellars/1.xml
  def update
    @cellar = Cellar.find(params[:id])

    respond_to do |format|
      if @cellar.update_attributes(params[:cellar])
        format.html { redirect_to(@cellar, :notice => 'Cellar was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cellar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cellars/1
  # DELETE /cellars/1.xml
  def destroy
    @cellar = Cellar.find(params[:id])
    @cellar.destroy

    respond_to do |format|
      format.html { redirect_to(cellars_url) }
      format.xml  { head :ok }
    end
  end
end
