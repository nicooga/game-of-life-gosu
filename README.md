game-of-life-gosu
=================

An implementation of Conway's Game of Life with Ruby and Gosu. Still on construction.

## Demo

```bash
git clone https://github.com/nicooga/game-of-life-gosu.git
```
To launch a gosu window with a graphycal implementation:
```ruby
require 'path/to/cloned/repo/game-of-life-gosu/game-of-life.rb'
GameOfLife::Window.new(GameOfLife::PULSAR)
# I recommend to expand the grid a little more:
GameOfLife::Window.new(GameOfLife::PULSAR.expand(50))
# Or you can draw your own grid with cells (though it can be a headache):
my_grid = GameOfLife::Grid.new <<-STR
  x|o|x|x|x|x|x|x|o|x|x
  x|x|o|x|x|x|x|x|x|o|x
  o|o|o|x|x|x|x|o|o|o|x
  x|x|x|x|x|x|x|x|x|x|x
  x|x|x|x|x|x|x|x|x|x|x
  x|x|x|x|x|x|x|x|x|x|x
STR
```
