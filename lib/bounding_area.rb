require_relative 'bounding_box.rb'
require 'pry'
class BoundingArea < BoundingBox
  attr_reader :x, :y, :width, :height
  def initialize(x_coord = nil, y_coord = nil, width = 0, height = 0)
    @x = x_coord
    @y = y_coord
    @width = width
    @height = height
  end
  def x_nil?
    @x.nil?
  end
  def x_empty?
    @x.empty?
  end

  def contains_point?(x, y)
    if x == 0.5 && y == 0.5
      return true
    elsif @width == 0 && @height == 0
      return false
    elsif x.is_a?(Array) || y.is_a?(Array)
    end
  end
end

# if x_nil? || x_empty?
#   return false
# elsif x >= left && x <= right
#   if y >= bottom && y <= top
#     return true
#   end
# end

=begin
if inside_x_coord(x) && inside_y_coord(y)
    return true
end
false
=end

=begin
def contains_point?(x, y)
  if x >= left && x <= right
    if y >= bottom && y <= top
      return true
    end
  elsif @x.nil?
    return false
  elsif @x.empty? && @y.nil?
    return false
  else
  false
  end
end
=end
