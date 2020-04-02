class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :score, :review
end
