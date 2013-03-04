class BoatsInfosController < ApplicationController
  # GET /boats_infos
  # GET /boats_infos.json
  def index
    @boats_infos = BoatsInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @boats_infos }
    end
  end

  # GET /boats_infos/1
  # GET /boats_infos/1.json
  def show
    @boats_info = BoatsInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @boats_info }
    end
  end

  # GET /boats_infos/new
  # GET /boats_infos/new.json
  def new
    @boats_info = BoatsInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @boats_info }
    end
  end

  # GET /boats_infos/1/edit
  def edit
    @boats_info = BoatsInfo.find(params[:id])
  end

  # POST /boats_infos
  # POST /boats_infos.json
  def create
    @boats_info = BoatsInfo.new(params[:boats_info])

    respond_to do |format|
      if @boats_info.save
        format.html { redirect_to @boats_info, notice: 'Boats info was successfully created.' }
        format.json { render json: @boats_info, status: :created, location: @boats_info }
      else
        format.html { render action: "new" }
        format.json { render json: @boats_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /boats_infos/1
  # PUT /boats_infos/1.json
  def update
    @boats_info = BoatsInfo.find(params[:id])

    respond_to do |format|
      if @boats_info.update_attributes(params[:boats_info])
        format.html { redirect_to @boats_info, notice: 'Boats info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @boats_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boats_infos/1
  # DELETE /boats_infos/1.json
  def destroy
    @boats_info = BoatsInfo.find(params[:id])
    @boats_info.destroy

    respond_to do |format|
      format.html { redirect_to boats_infos_url }
      format.json { head :no_content }
    end
  end
end
