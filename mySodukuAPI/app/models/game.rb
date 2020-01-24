class Game < ApplicationRecord
  has_many :scores
  serialize :game_array_start, Array 
  serialize :game_array_end, Array

  # validates :game_array_start, presence: true
  # validates :game_array_end, presence: true

  def first_array
    "#{self.game_array_start[0]}"
  end

  def time_elapsed
    "#{self.updated_at.to_i-self.created_at.to_i }"
  end

  
end
