# frozen_string_literal: true

# class to store current value and avoid rewrites on it
class Cell
  attr_accessor :value

  def initialize(value)
    @value = value
  end
end
