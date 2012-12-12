class MiccropostsController < ApplicationController
  # GET /miccroposts
  # GET /miccroposts.json
  def index
    @miccroposts = Miccropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @miccroposts }
    end
  end

  # GET /miccroposts/1
  # GET /miccroposts/1.json
  def show
    @miccropost = Miccropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @miccropost }
    end
  end

  # GET /miccroposts/new
  # GET /miccroposts/new.json
  def new
    @miccropost = Miccropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @miccropost }
    end
  end

  # GET /miccroposts/1/edit
  def edit
    @miccropost = Miccropost.find(params[:id])
  end

  # POST /miccroposts
  # POST /miccroposts.json
  def create
    @miccropost = Miccropost.new(params[:miccropost])

    respond_to do |format|
      if @miccropost.save
        format.html { redirect_to @miccropost, notice: 'Miccropost was successfully created.' }
        format.json { render json: @miccropost, status: :created, location: @miccropost }
      else
        format.html { render action: "new" }
        format.json { render json: @miccropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /miccroposts/1
  # PUT /miccroposts/1.json
  def update
    @miccropost = Miccropost.find(params[:id])

    respond_to do |format|
      if @miccropost.update_attributes(params[:miccropost])
        format.html { redirect_to @miccropost, notice: 'Miccropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @miccropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miccroposts/1
  # DELETE /miccroposts/1.json
  def destroy
    @miccropost = Miccropost.find(params[:id])
    @miccropost.destroy

    respond_to do |format|
      format.html { redirect_to miccroposts_url }
      format.json { head :no_content }
    end
  end
end
