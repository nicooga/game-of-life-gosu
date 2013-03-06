module GameOfLife
  PULSAR = Grid.new <<-GRID
    X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
    X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
    X|X|X|X|O|O|O|X|X|X|O|O|O|X|X|X|X
    X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
    X|X|O|X|X|X|X|O|X|O|X|X|X|X|O|X|X
    X|X|O|X|X|X|X|O|X|O|X|X|X|X|O|X|X
    X|X|O|X|X|X|X|O|X|O|X|X|X|X|O|X|X
    X|X|X|X|O|O|O|X|X|X|O|O|O|X|X|X|X
    X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
    X|X|X|X|O|O|O|X|X|X|O|O|O|X|X|X|X
    X|X|O|X|X|X|X|O|X|O|X|X|X|X|O|X|X
    X|X|O|X|X|X|X|O|X|O|X|X|X|X|O|X|X
    X|X|O|X|X|X|X|O|X|O|X|X|X|X|O|X|X
    X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
    X|X|X|X|O|O|O|X|X|X|O|O|O|X|X|X|X
    X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
    X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
  GRID

  GLIDER = Grid.new <<-GRID
    x|x|x|x|x
    x|x|o|x|x
    x|x|x|o|x
    x|o|o|o|x
    x|x|x|x|x
  GRID

  LWSS = Grid.new <<-GRID
    x|x|x|x|x|x|x
    x|x|o|o|o|o|x
    x|o|x|x|x|o|x
    x|x|x|x|x|o|x
    x|o|x|x|o|x|x
    x|x|x|x|x|x|x
  GRID

  BLINKER = Grid.new <<-GRID
    x|x|x|x|x
    x|x|x|x|x
    x|o|o|o|x
    x|x|x|x|x
    x|x|x|x|x
  GRID

  TOAD = Grid.new <<-GRID
    x|x|x|x|x|x
    x|x|x|x|x|x
    x|x|o|o|o|x
    x|o|o|o|x|x
    x|x|x|x|x|x
    x|x|x|x|x|x
  GRID

  BEACON = Grid.new <<-GRID
    x|x|x|x|x|x
    x|o|o|x|x|x
    x|o|o|x|x|x
    x|x|x|o|o|x
    x|x|x|o|o|x
    x|x|x|x|x|x
  GRID
end