class PunchesController < ApplicationController
  respond_to :html, :json, :js
  # GET /punches
  # GET /punches.json
  def index
    @punches = Punch.all
    respond_with(@punches)
  end

  # GET /punches/1
  # GET /punches/1.json
  def show
    @punch = Punch.find(params[:id])
    respond_with(@punch)
  end

  # GET /punches/new
  # GET /punches/new.json
  def new
    @punch = Punch.new
    respond_with(@punch)
  end

  # GET /punches/1/edit
  def edit
    @punch = Punch.find(params[:id])
  end

  # POST /punches
  # POST /punches.json
  def create
    @punch = Punch.new(params[:punch])
    @punch.save? ? respond_with(@punch) : respond_with(@punch.errors)
  end

  # PUT /punches/1
  # PUT /punches/1.json
  def update
    @punch = Punch.find(params[:id])

    respond_to do |format|
      if @punch.update_attributes(params[:punch])
        format.html { redirect_to @punch, notice: 'Punch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @punch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punches/1
  # DELETE /punches/1.json
  def destroy
    @punch = Punch.find(params[:id])
    @punch.destroy

    respond_to do |format|
      format.html { redirect_to punches_url }
      format.json { head :no_content }
    end
  end
end
