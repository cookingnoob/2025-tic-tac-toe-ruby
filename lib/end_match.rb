# frozen_string_literal: true

# Responsible for communicating which condition the game ended
class EndMatch
  def initialize
    @tie = false
    @winner = false
  end

  def end_match
    puts 'class for declaring winner or tie, asks if player wants to start again'
  end
end
