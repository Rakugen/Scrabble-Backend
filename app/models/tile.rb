class Tile < ApplicationRecord
  belongs_to :board, optional: true
  belongs_to :bag
  belongs_to :user, optional: true
end
