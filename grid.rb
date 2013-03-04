class Grid < Array
  def initialize(x,y=x)
    if x.is_a? String
      super x.lines.map { |l| l.chomp.split '|' }
      .transpose
      .map.with_index do |col, x| 
        col.map.with_index { |cell, y| Cell.new(x: x, y: y, alive: !!(cell =~ /o/i)) }
      end
    else
      super(x) do |x|
        Array.new(y) do
          Cell.new(alive: [true,false].sample, x: x, y: y)
        end
      end
    end
  end

  def next!
    cells_to_kill = []
    cells_to_resurrect = []

    # Any live cell with fewer than two live neighbours dies, as if caused by under-population.
    each_cell do |cell|
      next unless cell.alive?
      an = around(cell.x, cell.y).flatten.compact.count { |cell| cell.alive? }
      cells_to_kill << [cell.x, cell.y] if an < 2
    end

    # Any live cell with two or three live neighbours lives on to the next generation.
      # Do nothing...

    # Any live cell with more than three live neighbours dies, as if by overcrowding.
    each_cell do |cell|
      next unless cell.alive?
      an = around(cell.x, cell.y).flatten.compact.count { |cell| cell.alive? }
      cells_to_kill << [cell.x, cell.y] if an > 3
    end

    # Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction
    each_cell do |cell|
      next if cell.alive?
      an = around(cell.x, cell.y).flatten.compact.count { |cell| cell.alive? }
      cells_to_resurrect << [cell.x, cell.y] if an == 3
    end

    cells_to_kill.each      { |x,y| self[x][y].kill!      }
    cells_to_resurrect.each { |x,y| self[x][y].resurrect! }
    self
  end

  def animate!(gens=10,sleep_time=1)
    gens.times do
      next!
      print
      puts '-' * first.size
      sleep(sleep_time)
    end
  end

  def around(x,y)
    return nil unless [x,y].all? { |e| e >= 0 }
    slice_3 = ->(a,i){ i.zero? ? [a.size+1, 0, 1] : ((i-1)..(i+1)).to_a }
    sg = Grid[*slice_3.call(self, x)
    .map { |xi| self[xi] || Array.new(3, nil) }
    .map do |ary|
      slice_3.call(ary, y)
      .map { |yi| ary[yi] }
    end]
    sg[1][1] = nil
    sg
  end

  def each_cell
    each do |col|
      col.each do |cell|
        yield cell
      end
    end
  end

  def map_cells!
    replace(map do |col|
      col.map { |cell| yield(cell)}
    end)
  end

  def map_cells
    map do |col|
      col.map { |cell| yield(cell) }
    end
  end

  def to_s
    self.transpose.map do |row| 
      row.map { |cell| cell.nil? ? '+' : cell.to_s }.join('|')
    end.join("\n")
  end

  def print; puts self.to_s; end
end