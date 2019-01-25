class Tile < ApplicationRecord
  belongs_to :board
  belongs_to :bag
  belongs_to :user
end
