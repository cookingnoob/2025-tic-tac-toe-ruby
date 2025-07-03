# frozen_string_literal: true

# First stage of the game where two players can choose a value of 'X' or 'O'
class ValueSelector
  def initialize
    @human_value = ''
    @bot_value = ''
    @error_message = ''
  end

  def choose_value
    puts 'Choose a value of "X" or "O"'
    sanitazed_value = user_input
    values(sanitazed_value)
  end

  def user_input
    user_value = gets.chomp
    check_value(user_value)
  end

  def check_value(value)
    return value.upcase if %w[X O x o].include?(value)

    puts 'Wrong input, try again'
    user_input
  end

  def values(player_value)
    puts "You have chosen #{player_value}"
    @human_value = player_value
    bot_value(player_value)
  end

  def bot_value(player_value)
    @bot_value = player_value == 'O' ? 'X' : 'O'
    puts @bot_value
  end
end
