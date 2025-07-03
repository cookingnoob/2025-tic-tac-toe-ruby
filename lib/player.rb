# frozen_string_literal: true

# turn variable will alternate it value between two players so only one player can be playing at the same time
class Player
  attr_accessor :value, :turn, :index

  def initialize
    @value = ''
    @turn = false
    @index = nil
  end

  def human_turn(board)
    puts 'choose a cell'
    @index = gets.chomp.to_i
    board.set_player_value(@index, @value)
  end

  def bot_turn(board)
    @index = (rand * 8).to_i
    board.set_player_value(@index, @value)
  end
end
