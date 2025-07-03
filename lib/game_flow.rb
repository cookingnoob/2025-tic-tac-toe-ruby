# frozen_string_literal: true

require_relative 'value_selector'

# orchestrates different classes for the game flow
class GameFlow
  def initialize
    @player_one = Player.new
    @player_two = Player.new
  end

  def start_game
    puts 'Want to play Tic Tac Toe? Y/N'
    user_input = gets.chomp
    goodbye if user_input == 'N'
    ask_value if user_input == 'Y'
  end

  def ask_value
    puts 'Yei 🥳, lets play!'
    @player_one.value = ValueSelector.choose_value
    @player_two.value = ValueSelector.bot_value(@player_one.value)
    puts "Player value #{@player_one.value}, bot value #{@player_two.value}"
  end

  def first_turn
    puts 'first turn is for ...'
    puts 'instantiates a new board'
  end

  def handle_match
    puts 'class and its methods for handling match'
  end

  def end_match
    puts 'class for declaring winner or tie, asks if player wants to start again'
  end

  def goodbye
    puts 'Ok 😪, goodbye'
    exit
  end
end
