# frozen_string_literal: true

# First stage of the game where two players can choose a value of 'X' or 'O'
class ValueSelector
  def self.choose_value
    puts 'Choose a value of "X" or "O"'
    user_input
  end

  def self.user_input
    user_value = gets.chomp
    check_value(user_value)
  end

  def self.check_value(value)
    return value.upcase if %w[X O x o].include?(value)

    puts 'Wrong input, try again'
    user_input
  end

  def self.second_player_value(player_value)
    player_value == 'O' ? 'X' : 'O'
  end
end
