class GameInstance < ApplicationRecord
   has_many :played_games, dependent: :destroy
   has_many :users, through: :played_games
end