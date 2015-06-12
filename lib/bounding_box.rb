require 'pry'

class BoundingBox
  attr_reader :x, :y, :width, :height
  def initialize(x_coord, y_coord, width, height)
    @x = x_coord
    @y = y_coord
    @width = width
    @height = height
  end
  def left
    @x
  end
  def right
    @x + @width
  end
  def top
    @y + @height
  end
  def bottom
    @y
  end
  def width
    @width
  end
  def height
    @height
  end
  def inside_x_coord(x)
    if x >= left && x <= right
      return true
    end
      false
  end
  def inside_y_coord(y)
    if y >= bottom && y <= top
      return true
    end
      false
  end
  def contains_point?(x, y)
    if inside_x_coord(x) && inside_y_coord(y)
        return true
    end
    false
  end
end
