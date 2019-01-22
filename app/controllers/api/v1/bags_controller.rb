class Api::V1::BagsController < ApplicationController
  def index
    @bags = Bag.all
    render json: @bags
  end

  def show
    @bag = Bag.find(params[:id])
    render json: @bag, status: :ok
  end

  def create
    @bag = Bag.new(bag_params)
    @bag.save
    render json: @bag, status: :created
  end

  def update
    @bag = Bag.find(params[:id])
    @bag.update(bag_params)
    render json: @bag, status: :accepted
  end

  def bag_params
    params.require(:bag).permit(:num_tiles)
  end
end
