# require '/home/cygnus/Projects/game-of-life-gosu/game-of-life.rb'
module GameOfLife
end

%w|cell grid patterns|.each do |file|
  require_relative "#{file}.rb"
end