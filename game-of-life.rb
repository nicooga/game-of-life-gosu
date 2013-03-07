# require '/home/cygnus/Projects/game-of-life-gosu/game-of-life.rb'
module GameOfLife
  VERSION = '0.0.3'
end

%w|cell grid patterns window|.each do |file|
  require_relative "#{file}.rb"
end