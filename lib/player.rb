# frozen_string_literal: true

# stores information about the player to use with other classes
class Player
  attr_accessor :value, :turn

  def initialize
    @value = ''
    @turn = false
  end
end
