class CreatePlayedGames < ActiveRecord::Migration[5.2]
  def change
    create_table :played_games do |t|
      t.references :user, foreign_key: true
      t.references :game_instance, foreign_key: true
      t.text :score

      t.timestamps
    end
  end
end
