# Contains multiple bounding boxes and can find whether a point is within them
class BoundingArea
  def initialize(boxes)
    @bounding_boxes = boxes
  end

  def contains_point?(x, y)
    @bounding_boxes.any? do |area|
      area.contains_point?(x, y)
    end
  end
end
