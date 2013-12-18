class CondominiaController < ApplicationController
  before_action :set_condominium, only: [:show, :edit, :update, :destroy]

  def index
    @condominia = Condominium.all
    respond_with(@condominia)
  end

  def show
    respond_with(@condominium)
  end

  def new
    @condominium = Condominium.new
    respond_with(@condominium)
  end

  def edit
  end

  def create
    @condominium = Condominium.new(condominium_params)
    @condominium.save
    respond_with(@condominium)
  end

  def update
    @condominium.update(condominium_params)
    respond_with(@condominium)
  end

  def destroy
    @condominium.destroy
    respond_with(@condominium)
  end

  private
    def set_condominium
      @condominium = Condominium.find(params[:id])
    end

    def condominium_params
      params.require(:condominium).permit(:address, :number, :zip_code, :building, :designation_building)
    end
end
