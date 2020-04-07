class GameInstanceSerializer < ActiveModel::Serializer
  attributes :id, :when, :name
  has_many :played_games
  has_many :users, through: :played_games
end
