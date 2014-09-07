# Contains multiple bounding boxes and can find whether a point is within them
class BoundingArea
  def initialize(areas)
    @bounding_area = areas
  end

  def contains_point?(x, y)
    @bounding_area.each do |area|
      return false if area.nil?

      return true if area.contains_point?(x, y)
    end
    false
  end
end
