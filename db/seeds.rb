# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# TILES = {
#   'A' => 1,
#   'B' => 1,
#   'C' => 1,
#   'D' => 1,
#   'E' => 1,
#   'F' => 1,
#   'G' => 1,
#   'H' => 1,
#   'I' => 1,
#   'J' => 1,
#   'K' => 1,
#   'L' => 1,
#   'M' => 1,
#   'N' => 1,
#   'O' => 1,
#   'P' => 1,
#   'Q' => 1,
#   'R' => 1,
#   'S' => 1,
#   'T' => 1,
#   'U' => 1,
#   'V' => 1,
#   'W' => 1,
#   'X' => 1,
#   'Y' => 1,
#   'Z' => 1
# }
#
# b = Board.create
# tb = Bag.create
# u1 = User.create(name: "Simon", board_id:b.id, bag_id:tb.id)
# u2 = User.create(name: "Damon", board_id:b.id, bag_id:tb.id)
# ti1 = Tile.create(letter:"A", value:1, user_id:u1.id, bag_id:tb.id, board_id:b.id)
require 'byebug'
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
def start
  # new board
  @board = Board.create(size: 15)

  # new bag
  @bag = Bag.create(num_tiles: 98)

  # new players :name, :score, :board_id, :bag_id
  @user1 = User.create(name:"user1", score: 0, board_id: @board.id, bag_id: @bag.id)
  @user2 = User.create(name:"user2", score: 0, board_id: @board.id, bag_id: @bag.id)

  # new tiles
  # tile_creation

  TILES.each do |letter, data|
    data[0].times do |i|
      @tile = Tile.new(letter:letter, value: data[1], bag_id: @bag.id)
      @tile.save
    end
  end

  # turn to json and send back
  


end


start
