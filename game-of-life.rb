module GameOfLife
end

%w|cell grid patterns|.each do |file|
  require_relative "#{file}.rb"
end

GameOfLife::LWSS.print