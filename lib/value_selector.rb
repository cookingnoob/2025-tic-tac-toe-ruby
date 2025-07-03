# frozen_string_literal: true

require_relative 'player'

# First stage of the game where two players can choose a value of 'X' or 'O'
class ValueSelector
  def self.choose_value(player_one, player_two)
    puts 'Choose a value of "X" or "O"'
    sanitazed_value = user_input
    values(sanitazed_value, player_one, player_two)
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

  def self.values(player_value, player_one, player_two)
    puts "You have chosen #{player_value}"
    player_one.value = player_value
    bot_value(player_value, player_two)
  end

  def self.bot_value(player_value, player_two)
    player_two.value = player_value == 'O' ? 'X' : 'O'
    puts @bot_value
  end
end
