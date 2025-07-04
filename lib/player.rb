# frozen_string_literal: true

# stores information about the player to use with other classes
class Player
  attr_accessor :value, :turn, :name

  def initialize(name)
    @value = ''
    @turn = false
    @name = name
  end
end
