# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TILES = {
  'A' => 1,
  'B' => 1,
  'C' => 1,
  'D' => 1,
  'E' => 1,
  'F' => 1,
  'G' => 1,
  'H' => 1,
  'I' => 1,
  'J' => 1,
  'K' => 1,
  'L' => 1,
  'M' => 1,
  'N' => 1,
  'O' => 1,
  'P' => 1,
  'Q' => 1,
  'R' => 1,
  'S' => 1,
  'T' => 1,
  'U' => 1,
  'V' => 1,
  'W' => 1,
  'X' => 1,
  'Y' => 1,
  'Z' => 1
}

b = Board.create
tb = Bag.create
u1 = User.create(name: "Simon", board_id:b.id, bag_id:tb.id)
u2 = User.create(name: "Damon", board_id:b.id, bag_id:tb.id)
ti1 = Tile.create(letter:"A", value:1, user_id:u1.id, bag_id:tb.id, board_id:b.id)
