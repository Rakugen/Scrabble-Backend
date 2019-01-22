class BoardSerializer < ActiveModel::Serializer
  has_many :users
  has_many :tiles
  attributes :id, :size
end
