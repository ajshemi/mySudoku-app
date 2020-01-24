class AddGamePassToScores < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :game_pass, :boolean
  end
end
