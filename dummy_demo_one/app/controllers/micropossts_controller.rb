class MicroposstsController < ApplicationController
  # GET /micropossts
  # GET /micropossts.json
  def index
    @micropossts = Microposst.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micropossts }
    end
  end

  # GET /micropossts/1
  # GET /micropossts/1.json
  def show
    @microposst = Microposst.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microposst }
    end
  end

  # GET /micropossts/new
  # GET /micropossts/new.json
  def new
    @microposst = Microposst.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microposst }
    end
  end

  # GET /micropossts/1/edit
  def edit
    @microposst = Microposst.find(params[:id])
  end

  # POST /micropossts
  # POST /micropossts.json
  def create
    @microposst = Microposst.new(params[:microposst])

    respond_to do |format|
      if @microposst.save
        format.html { redirect_to @microposst, notice: 'Microposst was successfully created.' }
        format.json { render json: @microposst, status: :created, location: @microposst }
      else
        format.html { render action: "new" }
        format.json { render json: @microposst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micropossts/1
  # PUT /micropossts/1.json
  def update
    @microposst = Microposst.find(params[:id])

    respond_to do |format|
      if @microposst.update_attributes(params[:microposst])
        format.html { redirect_to @microposst, notice: 'Microposst was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microposst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropossts/1
  # DELETE /micropossts/1.json
  def destroy
    @microposst = Microposst.find(params[:id])
    @microposst.destroy

    respond_to do |format|
      format.html { redirect_to micropossts_url }
      format.json { head :no_content }
    end
  end
end
