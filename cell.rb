class Cell
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
    alive? ? "\e[1;33mO\e[0m" : 'X'
  end
end