class Api::V1::GamesController < ApplicationController
  def index
    # new board
    @board = Board.create(size: 15)

    # new bag
    @bag = Bag.create(num_tiles: 100)

    # new players :name, :score, :board_id, :bag_id
    @user1 = User.create(name:"user4", score: 0, board_id: @board.id, bag_id: @bag.id)
    @user2 = User.create(name:"user5", score: 0, board_id: @board.id, bag_id: @bag.id)

    # new tiles
    tile_creation
    # turn to json and send back
    some_data = [@user1, @user2, @bag, @board]
    render :json => some_data
  end

  # @tiles = []
  TILES = {
    "A" => [9, 1],
    "B" => [2, 3],
    "C" => [2, 3],
    "D" => [4, 2],
    "E" => [12, 1],
    "F" => [2, 4],
    "G" => [3, 2],
    "H" => [2, 4],
    "I" => [9, 1],
    "J" => [1, 8],
    "K" => [1, 5],
    "L" => [4, 1],
    "M" => [2, 3],
    "N" => [6, 1],
    "O" => [8, 1],
    "P" => [2, 3],
    "Q" => [1, 10],
    "R" => [6, 1],
    "S" => [4, 1],
    "T" => [6, 1],
    "U" => [4, 1],
    "V" => [2, 4],
    "W" => [2, 4],
    "X" => [1, 8],
    "Y" => [2, 4],
    "Z" => [1, 10]
  }
  def tile_creation
    TILES.each do |letter, data|
      data[0].times do |i|
      Tile.create(letter:letter, value: data[1], bag_id: @bag.id)
      end
    end
  end
end
