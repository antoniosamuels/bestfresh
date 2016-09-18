class FarmsController < ApplicationController
  before_action :set_farm, only: [:show, :edit, :update, :destroy]

  def index
    @farms = Farm.all
  end

  def show
    @farm = Farm.find(params[:id])
  end

  def new
    @farm = Farm.new
  end

  def edit
    @farm = Farm.find(params[:id])
  end

  def create
    @farm = Farm.new(farm_params)

      if @farm.save
        redirect_to @farm
      else
        render "new"
      end
  end

  def update
    @farm = Farm.find(params[:id])

      if @farm.update(farm_params)
        redirect_to @farm
      else
        render 'edit'
    end
  end

  def destroy
    @farm = Farm.find(params[:id])
    @farm.destroy

    redirect_to farms_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farm
      @farm = Farm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def farm_params
      params.require(:farm).permit(:name, :address, :hours, :content, :image, genre:[])
    end
end
