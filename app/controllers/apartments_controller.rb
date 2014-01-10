class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]

  def index
    @apartments = Apartment.all
    respond_with(@apartments)
  end

  def show
    respond_with(@apartment)
  end

  def new
    @apartment = Apartment.new
    respond_with(@apartment)
  end

  def edit
  end

  def create
    @apartment = Apartment.new(apartment_params)
    @apartment.save
    respond_with(@apartment)
  end

  def update
    @apartment.update(apartment_params)
    respond_with(@apartment)
  end

  def destroy
    @apartment.destroy
    respond_with(@apartment)
  end

  private
    def set_apartment
      @apartment = Apartment.find(params[:id])
    end

    def apartment_params
      params.require(:apartment).permit(:designation_building, :number)
    end
end
