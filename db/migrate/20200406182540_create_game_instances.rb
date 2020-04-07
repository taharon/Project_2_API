class CreateGameInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :game_instances do |t|
      t.date :when
      t.text :name

      t.timestamps
    end
  end
end
