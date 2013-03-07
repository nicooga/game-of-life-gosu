require 'gosu'

class GameOfLife::Window < Gosu::Window
  TOP_COLOR = Gosu::Color.new(0xFFFeee)
  BOTTOM_COLOR = Gosu::Color.new(0xFF1D4DB5)

  def initialize(grid)
    @grid =  grid
    @width = @grid.size*30+5
    @heigth = @grid.first.size*30+5
    super @width, @heigth, false
    self.caption = 'Game of Life'
    @last_frame = Gosu::milliseconds
  end

  def update
    @grid.next!
    @this_frame = Gosu::milliseconds
    @delta = @this_frame - @last_frame
    @last_frame = @this_frame
  end

  def draw
    ## BACKGROUND
    draw_quad(
      0,      0,       TOP_COLOR,
      @width, 0,       TOP_COLOR,
      0,      @heigth, BOTTOM_COLOR,
      @width, @heigth, BOTTOM_COLOR
    )

    ## CELLS
    @grid.each_cell do |cell|
      color = cell.alive? ? Gosu::Color::GREEN : Gosu::Color::BLACK
      draw_quad(
        cell.x*30+5,  cell.y*30+5,  color,
        cell.x*30+30, cell.y*30+5,  color,
        cell.x*30+5,  cell.y*30+30, color,
        cell.x*30+30, cell.y*30+30, color
      )
    end
  end
end