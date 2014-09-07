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
    if x.between?(@left, @right)
      bool = true
    else
      return false
    end

    if y.between?(bottom, top)
      bool
    else
      false
    end
  end
end
