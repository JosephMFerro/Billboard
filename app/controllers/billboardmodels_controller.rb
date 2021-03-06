class BillboardmodelsController < ApplicationController
  before_action :set_billboardmodel, except: [:index, :new, :create]

  def index
    # @billboardmodels = Billboardmodel.all
    @billboardmodels = Billboardmodel.except('order').order("id DESC")
  end

  def show
  end

  def new
    @billboardmodel = Billboardmodel.new
  end

  def edit
  end

  def create
    @billboardmodel = Billboardmodel.new(billboardmodel_params)
    if @billboardmodel.save
      redirect_to billboardmodels_path
    else
      render :new
    end
  end

  def update
    if @billboardmodel.update(billboardmodel_params)
      redirect_to billboardmodels_path
    else
      render :edit
    end
  end

  def destroy
    @billboardmodel.destroy
    redirect_to billboardmodel_path
  end

  private
    def set_billboardmodel
      @billboardmodel = Billboardmodel.find(params[:id])
    end
    def billboardmodel_params
      params.require(:billboardmodel).permit(:name, :location)
    end
end
