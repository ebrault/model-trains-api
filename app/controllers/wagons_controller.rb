# frozen_string_literal: true

class WagonsController < ApplicationController
  before_action :set_wagon, only: %i[show update destroy]

  # GET /wagons
  def index
    @wagons = Wagon.all
    render json: @wagons
  end

  # GET /wagons/1
  def show
    render json: @wagon
  end

  # POST /wagons
  def create
    @wagon = Wagon.new(wagon_params)

    if @wagon.save
      render json: @wagon, status: :created
    else
      render json: @wagon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wagons/1
  def update
    if @wagon.update(wagon_params)
      render json: @wagon
    else
      render json: @wagon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wagons/1
  def destroy
    @wagon.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wagon
    @wagon = Wagon.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def wagon_params
    params.require(:wagon).permit(:builder, :year)
  end
end
