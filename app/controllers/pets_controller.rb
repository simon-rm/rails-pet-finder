class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end
  def new
    @pet = Pet.new
  end
  def create
    @pet = Pet.create pet_params
    redirect_to pet_path(@pet)
  end
  def edit

  end
  def update
    @pet = Pet.find(params[:id])
    @pet.update pet_params
    redirect_to pet_path(@pet)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :address, :found_on)
  end
end
