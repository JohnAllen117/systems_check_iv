# Creates a new box that has a certain size that is defined by the user.
class BoundingBox
  attr_reader :left, :bottom, :width, :height, :right, :top
  def initialize(left, bottom, width, height)
    @left = left
    @bottom = bottom
    @width = width
    @height = height
    @right = @left + @width
    @top = @bottom + @height
  end

  def contains_point?(x, y)
    x.between?(left, right) && y.between?(bottom, top)
  end
end
