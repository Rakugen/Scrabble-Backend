class UserSerializer < ActiveModel::Serializer
  belongs_to :board
  belongs_to :bag
  has_many :tiles
  attributes :id, :name, :score
end
