# frozen_string_literal: true

class LocomotivesController < ProtectedController
  before_action :set_locomotive, only: %i[show update destroy]
  def index
    @locomotives = current_user.locomotives.all
    render json: @locomotives
  end

  def show
    render json: @locomotive
  end

  def create
    @locomotive = current_user.locomotives.build(locomotive_params)
    if @locomotive.save
      render json: @locomotive, status: :created
    else
      render json: @locomotive.errors, status: :unprocessable_entity
    end
  end

  def update
    if @locomotive.update(locomotive_params)
      render json: @locomotive
    else
      render json: @locomotive.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @locomotive.destroy
  end

  private

  def set_locomotive
    @locomotive = current_user.locomotives.find(params[:id])
  end

  def locomotive_params
    params.require(:locomotive).permit(:builder, :year)
  end
end
