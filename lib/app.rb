# frozen_string_literal: true

require_relative 'new_game'
# runs the app
class App
  def self.run
    game = NewGame.new
    game.start
  end
end
