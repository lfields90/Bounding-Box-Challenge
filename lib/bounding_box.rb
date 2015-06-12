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
  def contains_point?(x, y)
    if x >= left && x <= right
      if y >= bottom && y <= top
        return true
      end
    end
    false
  end
end
