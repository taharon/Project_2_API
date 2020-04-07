class GameInstance < ApplicationRecord
   has_many :played_games
   has_many :users, through: :played_games
end
