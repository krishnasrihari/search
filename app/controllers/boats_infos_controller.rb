class BoatsInfosController < ApplicationController
  # GET /boats_infos
  # GET /boats_infos.json
  def index
    @boats_infos = BoatsInfo.limit(20)

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

  def sort_name
    search = BoatsInfo.limit(20).search({"s"=>"NAME asc"})
      
    @boats_infos = search.result.order('NAME asc')
    
    render 'index'
  end
end
