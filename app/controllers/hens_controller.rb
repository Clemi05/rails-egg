class HensController < ApplicationController
  def index
    @hens = policy_scope(Hen)
      @markers = @hens.geocoded.map do |hen|
      {
        lat: hen.latitude,
        lng: hen.longitude,

      }
      end
    if params[:query].present?
      @hens = Hen.search_by_location(params[:query])
    else
      @hens = Hen.all
    end
  end

  def show
    @hen = Hen.find(params[:id])
    authorize @hen
  end

  def new
    @hen = Hen.new
    authorize @hen
  end

  def create
    @hen = Hen.new(hen_params)
    @hen.save
    redirect_to hen_path(@hen)
    authorize @hen
  end

  def destroy
    @hen = Hen.find(params[:id])
    @hen.destroy
    redirect_to hens_path
    authorize @hen
  end

  private

  def hen_params
    params.require(:hen).permit(:name, :description, :price_per_day, :breed, :eggs_per_day, :profile_picture)
  end
end
