class User < ApplicationRecord
  belongs_to :board
  belongs_to :bag
  has_many :tiles

end
