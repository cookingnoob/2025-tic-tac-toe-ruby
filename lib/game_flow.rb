# frozen_string_literal: true

require_relative 'player'
require_relative 'board'
require_relative 'value_selector'
require_relative 'turn_handler'

# orchestrates different classes for the game flow
class GameFlow
  attr_accessor :player_one, :player_two, :board

  def initialize
    @player_one = Player.new
    @player_two = Player.new
    @board = Board.new
  end

  def values
    @player_one.value = ValueSelector.choose_value
    @player_two.value = ValueSelector.bot_value(@player_one.value)
    puts "Player value is #{@player_one.value} and bot value is #{@player_two.value}"
    first_turn
  end

  def first_turn
    random_number = (rand * 10).to_i
    @player_one.turn = true if random_number.odd?
    @player_two.turn = true if random_number.even?
    match
  end

  def match
    player_one_turn if @player_one.turn == true
    player_two_turn if @player_two.turn == true
  end

  def player_one_turn
    puts 'choosing cell'
    puts add_value
    puts 'printing new board'
    puts 'if game not finished'
    puts 'bot turn'
  end

  def player_two_turn
    puts 'choosing cell'
    puts add_value
    puts 'printing new board'
    puts 'if game not finished'
    puts 'human turn'
  end

  def add_value
    puts 'cell available'
    puts 'adding value to board'
  end
end
