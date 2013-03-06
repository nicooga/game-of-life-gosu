game-of-life-gosu
=================

An implementation of Conway's Game of Life with Ruby and Gosu(without the gosu part and on construction :/)

## Demo

```bash
git clone https://github.com/nicooga/game-of-life-gosu.git
cd game-of-life-gosu
pry
```
```ruby
[1] pry(main)> require 'path/to/cloned/repo/game-of-life-gosu/game-of-life.rb'
[2] pry(main)> GameOfLife::PULSAR.animate

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
-----------------
X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
X|X|X|X|X|O|X|X|X|X|X|O|X|X|X|X|X
X|X|X|X|X|O|X|X|X|X|X|O|X|X|X|X|X
X|X|X|X|X|O|O|X|X|X|O|O|X|X|X|X|X
X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
X|O|O|O|X|X|O|O|X|O|O|X|X|O|O|O|X
X|X|X|O|X|O|X|O|X|O|X|O|X|O|X|X|X
X|X|X|X|X|O|O|X|X|X|O|O|X|X|X|X|X
X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
X|X|X|X|X|O|O|X|X|X|O|O|X|X|X|X|X
X|X|X|O|X|O|X|O|X|O|X|O|X|O|X|X|X
X|O|O|O|X|X|O|O|X|O|O|X|X|O|O|O|X
X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
X|X|X|X|X|O|O|X|X|X|O|O|X|X|X|X|X
X|X|X|X|X|O|X|X|X|X|X|O|X|X|X|X|X
X|X|X|X|X|O|X|X|X|X|X|O|X|X|X|X|X
X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
-----------------
X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
X|X|X|X|O|O|X|X|X|X|X|O|O|X|X|X|X
X|X|X|X|X|O|O|X|X|X|O|O|X|X|X|X|X
X|X|O|X|X|O|X|O|X|O|X|O|X|X|O|X|X
X|X|O|O|O|X|O|O|X|O|O|X|O|O|O|X|X
X|X|X|O|X|O|X|O|X|O|X|O|X|O|X|X|X
X|X|X|X|O|O|O|X|X|X|O|O|O|X|X|X|X
X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
X|X|X|X|O|O|O|X|X|X|O|O|O|X|X|X|X
X|X|X|O|X|O|X|O|X|O|X|O|X|O|X|X|X
X|X|O|O|O|X|O|O|X|O|O|X|O|O|O|X|X
X|X|O|X|X|O|X|O|X|O|X|O|X|X|O|X|X
X|X|X|X|X|O|O|X|X|X|O|O|X|X|X|X|X
X|X|X|X|O|O|X|X|X|X|X|O|O|X|X|X|X
X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X|X
-----------------
...
```
