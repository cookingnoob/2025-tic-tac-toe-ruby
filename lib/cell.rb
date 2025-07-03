# frozen_string_literal: true

# class to store current value and avoid rewrites on it
class Cell
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def value=(value)
    return if @value != ''

    @value = value
  end
end
