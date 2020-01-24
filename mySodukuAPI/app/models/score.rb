class Score < ApplicationRecord
  belongs_to :game
  # validates :game_score, presence: true
  # validates :game_score, numericality: true
  validates :gamer_name, presence: true


end
