class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :score, :review
  belongs_to :user
end
