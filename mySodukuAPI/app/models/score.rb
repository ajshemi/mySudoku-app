class Score < ApplicationRecord
  belongs_to :game
  # validates :game_score, presence: true
  # validates :game_score, numericality: true
  validates :gamer_name, presence: true

  # def game_score 
  #   self.game.updated_at.to_i-self.game.created_at.to_i
  # end
end
