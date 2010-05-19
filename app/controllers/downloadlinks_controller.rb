class DownloadlinksController < ApplicationController
  # GET /downloadlinks
  # GET /downloadlinks.xml
  def index
    @downloadlinks = Downloadlink.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @downloadlinks }
    end
  end

  # GET /downloadlinks/1
  # GET /downloadlinks/1.xml
  def show
    @downloadlink = Downloadlink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @downloadlink }
    end
  end

  # GET /downloadlinks/new
  # GET /downloadlinks/new.xml
  def new
    @downloadlink = Downloadlink.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @downloadlink }
    end
  end

  # GET /downloadlinks/1/edit
  def edit
    @downloadlink = Downloadlink.find(params[:id])
  end

  # POST /downloadlinks
  # POST /downloadlinks.xml
  def create
    @downloadlink = Downloadlink.new(params[:downloadlink])

    respond_to do |format|
      if @downloadlink.save
        flash[:notice] = 'Downloadlink was successfully created.'
        format.html { redirect_to(@downloadlink) }
        format.xml  { render :xml => @downloadlink, :status => :created, :location => @downloadlink }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @downloadlink.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /downloadlinks/1
  # PUT /downloadlinks/1.xml
  def update
    @downloadlink = Downloadlink.find(params[:id])

    respond_to do |format|
      if @downloadlink.update_attributes(params[:downloadlink])
        flash[:notice] = 'Downloadlink was successfully updated.'
        format.html { redirect_to(@downloadlink) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @downloadlink.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /downloadlinks/1
  # DELETE /downloadlinks/1.xml
  def destroy
    @downloadlink = Downloadlink.find(params[:id])
    @downloadlink.destroy

    respond_to do |format|
      format.html { redirect_to(downloadlinks_url) }
      format.xml  { head :ok }
    end
  end
end
