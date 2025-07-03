# frozen_string_literal: true

require_relative 'value_selector'

# orchestrates different classes for the game flow
class GameFlow
  def start_game
    puts 'Want to play Tic Tac Toe? Y/N'
    user_input = gets.chomp
    goodbye if user_input == 'N'
    ask_value if user_input == 'Y'
  end

  def ask_value
    puts 'Yei 🥳, lets play!'
    selector = ValueSelector.new
    selector.choose_value
  end

  def goodbye
    puts 'Ok 😪, goodbye'
    exit
  end
end
