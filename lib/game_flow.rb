# frozen_string_literal: true

# orchestrates different classes for the game flow
class GameFlow
  def start_game
    puts 'Want to play Tic Tac Toe? Y/N'
    user_input = gets.chomp
    puts 'Ok, goodbye' if user_input == 'N'
    puts 'yeiii, lets play!' if user_input == 'Y'
  end
end
