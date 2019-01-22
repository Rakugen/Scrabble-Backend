class BagSerializer < ActiveModel::Serializer
  has_many :users
  has_many :tiles
  attributes :id, :num_tiles
end
