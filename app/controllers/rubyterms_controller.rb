class RubytermsController < ApplicationController
  # GET /rubyterms
  # GET /rubyterms.json
  def index
    @rubyterms = Rubyterm.first(:order => "RANDOM()")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rubyterms }
    end
  end

  # GET /rubyterms/1
  # GET /rubyterms/1.json
  def show
    @rubyterm = Rubyterm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rubyterm }
    end
  end

  # GET /rubyterms/new
  # GET /rubyterms/new.json
  def new
    @rubyterm = Rubyterm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rubyterm }
    end
  end

  # GET /rubyterms/1/edit
  def edit
    @rubyterm = Rubyterm.find(params[:id])
  end

  # POST /rubyterms
  # POST /rubyterms.json
  def create
    @rubyterm = Rubyterm.new(params[:rubyterm])

    respond_to do |format|
      if @rubyterm.save
        format.html { redirect_to @rubyterm, notice: 'Rubyterm was successfully created.' }
        format.json { render json: @rubyterm, status: :created, location: @rubyterm }
      else
        format.html { render action: "new" }
        format.json { render json: @rubyterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rubyterms/1
  # PUT /rubyterms/1.json
  def update
    @rubyterm = Rubyterm.find(params[:id])

    respond_to do |format|
      if @rubyterm.update_attributes(params[:rubyterm])
        format.html { redirect_to @rubyterm, notice: 'Rubyterm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rubyterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubyterms/1
  # DELETE /rubyterms/1.json
  def destroy
    @rubyterm = Rubyterm.find(params[:id])
    @rubyterm.destroy

    respond_to do |format|
      format.html { redirect_to rubyterms_url }
      format.json { head :no_content }
    end
  end
end
