class HensController < ApplicationController
  def index
    @hens = policy_scope(Hen)
  end

  def show
    @hen = Hen.find(params[:id])
  end

  def new
    @hen = Hen.new
  end

  def create
    @hen = Hen.new(hen_params)
    @hen.save
    redirect_to hen_path(@hen)
  end

  def destroy
    @hen = Hen.find(params[:id])
    @hen.destroy
    redirect_to hens_path
  end

private

  def hen_params
    params.require(:hen).permit(:name, :description, :price_per_day, :breed, :eggs_per_day, :profile_picture)
  end
end
