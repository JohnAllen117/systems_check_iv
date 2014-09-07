class BoundingArea
  def initialize(areas)
    @bounding_area = areas
  end

  def contains_point?(x, y)
    @bounding_area.each do |area|
      if area.nil?
        return false
      end
      if area.contains_point?(x, y)
        return true
      end
    end
    false
  end
end
