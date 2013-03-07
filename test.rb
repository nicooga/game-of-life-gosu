require '/home/cygnus/Projects/game-of-life-gosu/game-of-life.rb'
require 'awesome_print'

grid = GameOfLife::GLIDER.expand(25)
GameOfLife::Window.new(grid).show