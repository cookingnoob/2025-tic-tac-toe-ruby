# frozen_string_literal: true

require_relative 'player'
require_relative 'board'
require_relative 'value_selector'

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
  end
end
