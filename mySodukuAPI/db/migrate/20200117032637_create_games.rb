class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :difficulty
      t.text :game_array_start
      t.text :game_array_end

      t.timestamps
    end
  end
end
