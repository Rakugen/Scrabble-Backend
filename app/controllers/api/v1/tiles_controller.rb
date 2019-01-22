class Api::V1::TilesController < ApplicationController
  def index
    @tiles = Tile.all
    render json: @tiles
  end

  def show
    @tile = Tile.find(params[:id])
    render json: @tile, status: :ok
  end

  def create
    @tile = Tile.new(tile_params)
    @tile.save
    render json: @tile, status: :created
  end

  def update
    @tile = Tile.find(params[:id])
    @tile.update(tile_params)
    render json: @tile, status: :accepted
  end

  def tile_params
    params.require(:tile).permit(:letter, :value, :user_id, :bag_id, :board_id, :placed)
  end
end
