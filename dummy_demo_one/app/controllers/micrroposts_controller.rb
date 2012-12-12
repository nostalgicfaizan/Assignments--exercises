class MicrropostsController < ApplicationController
  # GET /micrroposts
  # GET /micrroposts.json
  def index
    @micrroposts = Micrropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micrroposts }
    end
  end

  # GET /micrroposts/1
  # GET /micrroposts/1.json
  def show
    @micrropost = Micrropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micrropost }
    end
  end

  # GET /micrroposts/new
  # GET /micrroposts/new.json
  def new
    @micrropost = Micrropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micrropost }
    end
  end

  # GET /micrroposts/1/edit
  def edit
    @micrropost = Micrropost.find(params[:id])
  end

  # POST /micrroposts
  # POST /micrroposts.json
  def create
    @micrropost = Micrropost.new(params[:micrropost])

    respond_to do |format|
      if @micrropost.save
        format.html { redirect_to @micrropost, notice: 'Micrropost was successfully created.' }
        format.json { render json: @micrropost, status: :created, location: @micrropost }
      else
        format.html { render action: "new" }
        format.json { render json: @micrropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micrroposts/1
  # PUT /micrroposts/1.json
  def update
    @micrropost = Micrropost.find(params[:id])

    respond_to do |format|
      if @micrropost.update_attributes(params[:micrropost])
        format.html { redirect_to @micrropost, notice: 'Micrropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micrropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micrroposts/1
  # DELETE /micrroposts/1.json
  def destroy
    @micrropost = Micrropost.find(params[:id])
    @micrropost.destroy

    respond_to do |format|
      format.html { redirect_to micrroposts_url }
      format.json { head :no_content }
    end
  end
end
