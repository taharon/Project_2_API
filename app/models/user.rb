# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :games
  has_many :played_games
  has_many :game_instances, through: :played_games
end
