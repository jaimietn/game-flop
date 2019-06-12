class Game < ApplicationRecord
  belongs_to :console

  def games
    Game.where("game_id == '#{self.id}'")
  end
  
end
