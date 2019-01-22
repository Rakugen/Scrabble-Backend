class Api::V1::BoardsController < ApplicationController
  def index
    @boards = Board.all
    render json: @boards
  end

  def show
    @board = Board.find(params[:id])
    render json: @board, status: :ok
  end

  def create
    @board = Board.new(board_params)
    @board.save
    render json: @board, status: :created
  end

  def update
    @board = Board.find(params[:id])
    @board.update(board_params)
    render json: @board, status: :accepted
  end

  def board_params
    params.require(:board).permit(:size)
  end
end
