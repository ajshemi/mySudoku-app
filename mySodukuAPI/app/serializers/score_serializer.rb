class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :game_score, :gamer_name, :game_id, :game_pass
  # has_one :game
end
