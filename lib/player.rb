# frozen_string_literal: true

# turn variable will alternate it value between two players so only one player can be playing at the same time
class Player
  attr_accessor :value, :turn

  def initialize
    @value = ''
    @turn = false
  end
end
