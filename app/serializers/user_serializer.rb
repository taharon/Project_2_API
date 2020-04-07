# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :games
  has_many :played_games
  has_many :game_instances, through: :played_games
end
