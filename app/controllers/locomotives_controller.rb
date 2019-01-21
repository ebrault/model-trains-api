# frozen_string_literal: true

class LocomotivesController < ApplicationController
  before_action :set_locomotive, only: %i[show update destroy]

  # GET /locomotives
  def index
    @locomotives = Locomotive.all
    render json: @locomotives
  end

  # GET /locomotives/1
  def show
    render json: @locomotive
  end

  # POST /locomotives
  def create
    @locomotive = Locomotive.new(locomotive_params)
    if @locomotive.save
      render json: @locomotive, status: :created
    else
      render json: @locomotive.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /locomotives/1
  def update
    if @locomotive.update(locomotive_params)
      render json: @locomotive
    else
      render json: @locomotive.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locomotives/1
  def destroy
    @locomotive.destroy
  end

  private

  def set_locomotive
    @locomotive = Locomotive.find(params[:id])
  end

  def locomotive_params
    params.require(:locomotive).permit(:builder, :year)
  end
end
