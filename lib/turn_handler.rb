# frozen_string_literal: true

# Handles Player turn from true to false according to who is going to play
class TurnHandler
  def self.first_turn
    puts 'first turn'
    puts (rand * 10).to_i
  end
end
