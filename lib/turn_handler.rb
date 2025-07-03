# frozen_string_literal: true

# Handles Player turn from true to false according to who is going to play
class TurnHandler
  def self.first_turn(player_one, player_two)
    random_number = (rand * 10).to_i
    player_one.turn = true if random_number.odd?
    player_two.turn = true if random_number.even?
    puts 'Player one begins the match' if player_one.turn
    puts 'Player two begins the match' if player_two.turn
  end

  def self.current_turn(player_one, player_two)
    player_one.human_turn if player_one.turn
    player_two.bot_turn if player_two.turn
  end
end
