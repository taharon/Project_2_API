class GameInstanceSerializer < ActiveModel::Serializer
  attributes :id, :when, :name
  has_many :played_games
end
