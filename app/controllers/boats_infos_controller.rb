class BoatsInfosController < ApplicationController
  # GET /boats_infos
  # GET /boats_infos.json
  def index
    @boats_infos = BoatsInfo.page(params[:page] || 1)

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

  def sort_name_up
    @boats_infos = BoatsInfo.page(params[:page] || 1).order('NAME asc')
      
    #@boats_infos = search.result.order('NAME asc').offset(0).limit(20)
    
    render 'index'
  end
  
  def sort_name_down
    @boats_infos = BoatsInfo.page(params[:page] || 1).order('NAME desc')
    #search = BoatsInfo.search({"s"=>"NAME desc"})
      
    #@boats_infos = search.result.order('NAME desc').offset(0).limit(20)
    
    render 'index'    
  end
end
