class GameSerializer < ActiveModel::Serializer
  attributes :id, :difficulty, :game_array_start, :game_array_end,:created_at,:updated_at,:time_elapsed #,:first_array,:bold_level
  has_many :scores
  
  # def bold_level
  #   self.object.difficulty.upcase
  # end
end
