# frozen_string_literal: true

require_relative 'board'
require_relative 'value_selector'
require_relative 'player'

# orchestrates different classes for the game flow
class GameFlow
  attr_accessor :board, :players

  def initialize
    @board = Board.new
    @players = [Player.new('player one'), Player.new('player two')]
  end

  def begin
    random_number = random_number_generator
    @players[0].turn = true if random_number.even?
    @players[1].turn = true if random_number.odd?
    values
  end

  def values
    player_values(@players[0], @players[1]) if @players[0].turn
    player_values(@players[1], @players[0]) if @players[1].turn
    game_loop
  end

  def game_loop
    9.times do
      turn_flow
    end
  end

  def turn_flow
    current_player = whos_turn
    add_move(current_player)
    game_ended(current_player)
    switch_turn(current_player)
  end

  def add_move(current_player)
    index = @board.ask_for_cell
    @board.choose_cell(index, current_player.value)
    @board.check_winner(current_player)
  end

  def game_ended(current_player)
    announce_winner(current_player) if current_player.winner
    announce_tie if @board.check_tie
  end

  def announce_winner(current_player)
    puts "#{current_player.name} wins!"
    exit
  end

  def announce_tie
    puts 'its a tie'
    exit
  end

  def switch_turn(current_player)
    @players.map do |p|
      p.turn = p != current_player
    end
  end

  def whos_turn
    current_player = @players[0] if @players[0].turn
    current_player = @players[1] if @players[1].turn
    puts "#{current_player.name} turn"
    current_player
  end

  def player_values(playing_first, playing_second)
    puts "#{playing_first.name} begins"
    playing_first.value = ValueSelector.choose_value
    playing_second.value = ValueSelector.second_player_value(playing_first.value)
    puts "#{playing_first.name} is #{playing_first.value} | #{playing_second.name} is #{playing_second.value}"
  end

  def random_number_generator
    Random.rand(1...99)
  end
end
