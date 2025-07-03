# frozen_string_literal: true

# Handles Player turn from true to false according to who is going to play
class TurnHandler
  def self.first_turn(player_one, player_two)
    # random_number = (rand * 10).to_i
    random_number = 1
    player_one.turn = true if random_number.odd?
    player_two.turn = true if random_number.even?
    puts 'Player one begins the match' if player_one.turn == true
    puts 'Player two begins the match' if player_two.turn == true
  end

  def self.current_turn(player_one, player_two)
    return handle_human(player_one) if player_one.turn

    handle_bot(player_two) if player_two.turn
  end

  def self.handle_human(player_one)
    player_one.choose_index
    player_one
  end

  def self.handle_bot(player_two)
    player_two.random_index
    player_two
  end
end
