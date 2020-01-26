class RemoveGameScoreFromScores < ActiveRecord::Migration[6.0]
  def change

    remove_column :scores, :game_score, :integer
  end
end
