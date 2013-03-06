class GameOfLife::Grid < Array
  def initialize(x,y=x)
    if x.is_a? String
      super x.lines.map { |l| l.chomp.split '|' }
      .transpose
      .map.with_index do |col, x| 
        col.map.with_index { |cell, y| GameOfLife::Cell.new(x: x, y: y, alive: !!(cell =~ /o/i)) }
      end
    else
      super(x) do |x|
        Array.new(y) do
          GameOfLife::Cell.new(alive: [true,false].sample, x: x, y: y)
        end
      end
    end
  end

  def next!
    cells, cells_to_kill, cells_to_resurrect = [], [], []

    each_cell do |cell|
      cells << [cell, around(cell.x,cell.y).flatten.compact.count(&:alive?)]
    end
    
    # Any live cell with fewer than two live neighbours dies, as if caused by under-population.
    cells_to_kill.concat cells.select { |cell,ln| cell.alive? and ln < 2 }
    # Any live cell with two or three live neighbours lives on to the next generation.
      # Do nothing...
    # Any live cell with more than three live neighbours dies, as if by overcrowding.
    cells_to_kill.concat cells.select { |cell,ln| cell.alive? and ln > 3 }
    # Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
    cells_to_resurrect.concat cells.select { |cell,ln| !cell.alive? and ln == 3 }

    cells_to_kill.each      { |cell,_| cell.kill! }
    cells_to_resurrect.each { |cell,_| cell.resurrect! }
    
    self
  end

  def next; dup.next!; end

  def animate!(gens=10*100,interval=0.3)
    print
    puts (['-']*first.size).join('-')
    gens.times do
      next!
      print
      puts (['-']*first.size).join('-')
      sleep(interval)
    end
  end

  def animate(*args)
    dup.animate! *args
  end

  NEGATIVE_SLICE = ->(ary,i){ ((0..ary.size-1).to_a*2)[ary.size+i,3] }
  OVER_SLICE = ->(ary,i){ ((0..ary.size-1).to_a*2)[i%ary.size,3] }
  SLICE_AROUND = ->(ary,i) do
    return Array.new(3,nil) if ary.nil?
    if i <= 0
      NEGATIVE_SLICE.call(ary,i-1) 
    elsif i >= ary.size-1
      OVER_SLICE.call(ary,i-1)
    else 
      ((i-1)..(i+1)).to_a
    end
  end

  def around(x,y)    
    ary = SLICE_AROUND.call(self,x).map do |xi|
      SLICE_AROUND.call(self[xi],y).map do |yi|
        self[xi][yi]
      end
    end
    ary[1][1] = nil
    self.class[*ary]
  end

  def each_cell
    each do |col|
      col.each do |cell|
        yield cell
      end
    end
  end

  def to_s
    self.transpose.map do |row| 
      row.map { |cell| cell.nil? ? '+' : cell.to_s }.join('|')
    end.join("\n")
  end

  def print; puts self.to_s; end
end