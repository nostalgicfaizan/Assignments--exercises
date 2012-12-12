class DrumiesController < ApplicationController
  # GET /drumies
  # GET /drumies.json
  def index
    @drumies = Drumy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drumies }
    end
  end

  # GET /drumies/1
  # GET /drumies/1.json
  def show
    @drumy = Drumy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drumy }
    end
  end

  # GET /drumies/new
  # GET /drumies/new.json
  def new
    @drumy = Drumy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drumy }
    end
  end

  # GET /drumies/1/edit
  def edit
    @drumy = Drumy.find(params[:id])
  end

  # POST /drumies
  # POST /drumies.json
  def create
    @drumy = Drumy.new(params[:drumy])

    respond_to do |format|
      if @drumy.save
        format.html { redirect_to @drumy, notice: 'Drumy was successfully created.' }
        format.json { render json: @drumy, status: :created, location: @drumy }
      else
        format.html { render action: "new" }
        format.json { render json: @drumy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drumies/1
  # PUT /drumies/1.json
  def update
    @drumy = Drumy.find(params[:id])

    respond_to do |format|
      if @drumy.update_attributes(params[:drumy])
        format.html { redirect_to @drumy, notice: 'Drumy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @drumy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drumies/1
  # DELETE /drumies/1.json
  def destroy
    @drumy = Drumy.find(params[:id])
    @drumy.destroy

    respond_to do |format|
      format.html { redirect_to drumies_url }
      format.json { head :no_content }
    end
  end
end
