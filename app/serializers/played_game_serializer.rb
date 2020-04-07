class PlayedGameSerializer < ActiveModel::Serializer
  attributes :id, :score
  belongs_to :user
  belongs_to :game_instance
end
