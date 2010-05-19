class Downloadlink2sController < ApplicationController
  # GET /downloadlink2s
  # GET /downloadlink2s.xml
  def index
    @downloadlink2s = Downloadlink2.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @downloadlink2s }
    end
  end

  # GET /downloadlink2s/1
  # GET /downloadlink2s/1.xml
  def show
    @downloadlink2 = Downloadlink2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @downloadlink2 }
    end
  end

  # GET /downloadlink2s/new
  # GET /downloadlink2s/new.xml
  def new
    @downloadlink2 = Downloadlink2.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @downloadlink2 }
    end
  end

  # GET /downloadlink2s/1/edit
  def edit
    @downloadlink2 = Downloadlink2.find(params[:id])
  end

  # POST /downloadlink2s
  # POST /downloadlink2s.xml
  def create
    @downloadlink2 = Downloadlink2.new(params[:downloadlink2])

    respond_to do |format|
      if @downloadlink2.save
        flash[:notice] = 'Downloadlink2 was successfully created.'
        format.html { redirect_to(@downloadlink2) }
        format.xml  { render :xml => @downloadlink2, :status => :created, :location => @downloadlink2 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @downloadlink2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /downloadlink2s/1
  # PUT /downloadlink2s/1.xml
  def update
    @downloadlink2 = Downloadlink2.find(params[:id])

    respond_to do |format|
      if @downloadlink2.update_attributes(params[:downloadlink2])
        flash[:notice] = 'Downloadlink2 was successfully updated.'
        format.html { redirect_to(@downloadlink2) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @downloadlink2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /downloadlink2s/1
  # DELETE /downloadlink2s/1.xml
  def destroy
    @downloadlink2 = Downloadlink2.find(params[:id])
    @downloadlink2.destroy

    respond_to do |format|
      format.html { redirect_to(downloadlink2s_url) }
      format.xml  { head :ok }
    end
  end
end
