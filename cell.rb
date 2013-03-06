class  GameOfLife::Cell
  attr_accessor :x, :y

  def initialize(hash)
    raise 'Bad attribute keys' unless (hash.keys - [:x, :y, :alive]).empty?
    hash.each { |k,v| eval "@#{k}= #{v}" }
  end

  def alive?;       @alive;         end
  def alive=(bool); @alive = bool;  end
  def kill!;        @alive = false; end
  def resurrect!;   @alive = true   end
  
  def to_s
    alive? ? "\e[1;32mO\e[0m" : "\e[1;30mX\e[0m"
  end
end