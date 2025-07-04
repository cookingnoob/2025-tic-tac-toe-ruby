# frozen_string_literal: true

require_relative 'board'
require_relative 'value_selector'
require_relative 'player'

# orchestrates different classes for the game flow
class GameFlow
  attr_accessor :board, :player_one, :player_two

  def initialize
    @board = Board.new
    @player_one = Player.new('player one')
    @player_two = Player.new('player two')
  end

  def begin
    random_number = Random.rand(1...99)
    @player_one.turn = true if random_number.even?
    @player_two.turn = true if random_number.odd?
    values
  end

  def values
    if @player_one.turn
      player_values(@player_one, @player_two)
    elsif @player_two.turn
      player_values(@player_two, @player_one)
    end
  end

  def player_values(playing_first, playing_second)
    puts "#{playing_first.name} begins"
    playing_first.value = ValueSelector.choose_value
    playing_second.value = ValueSelector.second_player_value(playing_first.value)
    puts "#{playing_first.name} is #{playing_first.value} | #{playing_second.name} is #{playing_second.value}"
  end
end
