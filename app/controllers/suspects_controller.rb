class SuspectsController < ApplicationController
  def index
    @suspects = Suspect.all
  end

  def show
    @suspect = Suspect.find(params[:id])
  end

  def new
    @suspect = Suspect.new
  end

  def create
    @suspect = Suspect.new(suspect_params)
    if @suspect.save
      redirect_to suspect_path(@suspect)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @suspect = Suspect.find(params[:id])
    @suspect.destroy
    if @suspect.destroy
      redirect_to suspect_path(@suspect)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def suspect_params
    params.require(:suspect).permit(:name, :color, :photo)
  end
end
