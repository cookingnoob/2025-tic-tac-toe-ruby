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
    9.times do
      if @player_one.turn
        puts 'Player one turn'
        switch_turn
      elsif @player_two.turn
        puts 'player two turn'
        switch_turn
      end
    end
  end

  def switch_turn
    @player_two.turn = !@player_two.turn
    @player_one.turn = !@player_one.turn
  end
end
