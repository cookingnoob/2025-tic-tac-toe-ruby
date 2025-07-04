# frozen_string_literal: true

require_relative 'value_selector'
require_relative 'turn_handler'
require_relative 'board'
require_relative 'player'

# orchestrates different classes for the game flow
class GameFlow
  attr_accessor :winner, :tie

  def initialize
    @player_one = Player.new
    @player_two = Player.new
    @board = Board.new
    @winner = false
    @tie = false
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
    handle_bot_value
    puts "Player value #{@player_one.value}, bot value #{@player_two.value}"
    first_turn
  end

  def handle_bot_value
    @player_two.value = ValueSelector.bot_value(@player_one.value)
    @player_two.bot = true
  end

  def first_turn
    TurnHandler.first_turn(@player_one, @player_two)
    @board.paint_board
    whos_turn
  end

  def whos_turn
    current_player = TurnHandler.current_turn(@player_one, @player_two)
    check_move(current_player)
  end

  def check_move(current_player)
    index = current_player.choose_index
    empty = @board.empty_index(index)
    retry_cell(current_player) unless empty
  end

  def end_match
    puts 'class for declaring winner or tie, asks if player wants to start again'
  end

  def goodbye
    puts 'Ok 😪, goodbye'
    exit
  end

  def retry_cell(current_player)
    puts 'Cell already taken, choose another one'
    check_move(current_player)
  end
end
