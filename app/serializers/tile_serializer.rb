class TileSerializer < ActiveModel::Serializer
  belongs_to :board
  belongs_to :bag
  belongs_to :user
  attributes :id, :letter, :value
end
