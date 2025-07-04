# frozen_string_literal: true

require_relative 'board'
require_relative 'value_selector'
require_relative 'player'

# orchestrates different classes for the game flow
class GameFlow
  attr_accessor :board, :player_one, :player_two

  def initialize
    @board = Board.new
    @player_one = Player.new
    @player_two = Player.new
  end

  def begin
    random_number = Random.rand(1...99)
    puts "even #{random_number.even?}"
    puts "odd #{random_number.odd?}"
    @player_one.turn = true if random_number.even?
    @player_two.turn = true if random_number.odd?
    values
  end

  def values
    if @player_one.turn
      puts 'player one begins'
      player_values(@player_one, @player_two)
    elsif @player_two.turn
      puts 'player two begins'
      player_values(@player_two, @player_one)
    end
    puts "player one is #{@player_one.value} player two is #{@player_two.value}"
  end

  def player_values(playing_first, playing_second)
    playing_first.value = ValueSelector.choose_value
    playing_second.value = ValueSelector.second_player_value(playing_first.value)
  end
end
